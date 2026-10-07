import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../theme/app_theme.dart';

class StatsScreen extends StatefulWidget {
  final bool isPremium;

  const StatsScreen({
    super.key,
    required this.isPremium,
  });

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  bool _isLoading = true;

  int _totalSessions = 0;
  int _totalMinutes = 0;
  String _mostUsedMethod = '-';

  @override
  void initState() {
    super.initState();

    if (widget.isPremium) {
      _loadStats();
    } else {
      _isLoading = false;
    }
  }

  Future<void> _loadStats() async {
    try {
      final data = await Supabase.instance.client
          .from('study_sessions')
          .select('method_name, duration_minutes');

      final sessions =
          List<Map<String, dynamic>>.from(data);

      int totalMinutes = 0;

      final Map<String, int> methodCount = {};

      for (final session in sessions) {
        final duration =
            int.tryParse(
                  session['duration_minutes'].toString(),
                ) ??
                0;

        final method =
            session['method_name']?.toString() ??
                'Método de estudo';

        totalMinutes += duration;

        methodCount[method] =
            (methodCount[method] ?? 0) + 1;
      }

      String mostUsedMethod = '-';

      if (methodCount.isNotEmpty) {
        mostUsedMethod = methodCount.entries
            .reduce(
              (current, next) =>
                  current.value >= next.value
                      ? current
                      : next,
            )
            .key;
      }

      if (mounted) {
        setState(() {
          _totalSessions = sessions.length;
          _totalMinutes = totalMinutes;
          _mostUsedMethod = mostUsedMethod;
          _isLoading = false;
        });
      }
    } catch (error) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Erro ao carregar estatísticas: $error',
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estatísticas'),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : _buildStats(),
    );
  }

  Widget _buildStats() {
    return RefreshIndicator(
      onRefresh: _loadStats,
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Icon(
            Icons.bar_chart,
            size: 70,
            color: AppTheme.accent,
          ),
          const SizedBox(height: 16),
          const Text(
            'Seu desempenho',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: AppTheme.primary,
            ),
          ),
          const SizedBox(height: 30),
          _buildStatCard(
            Icons.check_circle,
            'Sessões concluídas',
            '$_totalSessions',
          ),
          const SizedBox(height: 16),
          _buildStatCard(
            Icons.timer,
            'Tempo total de estudo',
            '$_totalMinutes min',
          ),
          const SizedBox(height: 16),
          _buildStatCard(
            Icons.school,
            'Método mais utilizado',
            _mostUsedMethod,
          ),
          const SizedBox(height: 30),
          const Text(
            'Continue estudando para acompanhar sua evolução!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(
    IconData icon,
    String title,
    String value,
  ) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(
              icon,
              size: 40,
              color: AppTheme.accent,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    value,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}