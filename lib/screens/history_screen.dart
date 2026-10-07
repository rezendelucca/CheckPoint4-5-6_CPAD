import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  bool _isLoading = true;
  List<Map<String, dynamic>> _sessions = [];

  @override
  void initState() {
    super.initState();
    _loadSessions();
  }

  Future<void> _loadSessions() async {
    try {
      final data = await Supabase.instance.client
        .from('study_sessions')
        .select('id, method_name, duration_minutes, completed_at')
        .order('completed_at', ascending: false);

      setState(() {
        _sessions = List<Map<String, dynamic>>.from(data);
        _isLoading = false;
      });
    } catch (error) {
      setState(() {
        _isLoading = false;
      });

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erro ao carregar histórico: $error'),
          ),
        );
      }
    }
  }

  String _formatDate(String date) {
    final parsedDate = DateTime.parse(date).toLocal();

    final day = parsedDate.day.toString().padLeft(2, '0');
    final month = parsedDate.month.toString().padLeft(2, '0');
    final year = parsedDate.year.toString();

    final hour = parsedDate.hour.toString().padLeft(2, '0');
    final minute = parsedDate.minute.toString().padLeft(2, '0');

    return '$day/$month/$year às $hour:$minute';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Histórico de Estudos'),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : _sessions.isEmpty
              ? const Center(
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.history,
                          size: 70,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Nenhuma sessão registrada ainda.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Conclua uma sessão de estudo para vê-la aqui.',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              : RefreshIndicator(
                  onRefresh: _loadSessions,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: _sessions.length,
                    itemBuilder: (context, index) {
                      final session = _sessions[index];

                      final methodName =
                          session['method_name'] ?? 'Método de estudo';

                      final duration =
                          session['duration_minutes'] ?? 0;

                      final completedAt =
                          session['completed_at']?.toString();

                      return Card(
                        margin: const EdgeInsets.only(bottom: 12),
                        child: ListTile(
                          leading: const CircleAvatar(
                            child: Icon(Icons.timer),
                          ),
                          title: Text(
                            methodName.toString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: completedAt != null
                              ? Text(
                                  'Concluída em ${_formatDate(completedAt)}',
                                )
                              : null,
                          trailing: Text(
                            '$duration min',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
    );
  }
}