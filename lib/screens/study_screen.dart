import 'dart:async';

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/study_method.dart';
import '../theme/app_theme.dart';

class StudyScreen extends StatefulWidget {
  final StudyMethod method;

  const StudyScreen({
    super.key,
    required this.method,
  });

  @override
  State<StudyScreen> createState() => _StudyScreenState();
}

class _StudyScreenState extends State<StudyScreen> {
  Timer? _timer;
  late int _remainingSeconds;
  bool _isRunning = false;

  @override
  void initState() {
    super.initState();
    _remainingSeconds = widget.method.workMinutes * 60;
  }

  void _startTimer() {
    if (_isRunning) return;

    setState(() {
      _isRunning = true;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
      } else {
        _timer?.cancel();

        setState(() {
          _isRunning = false;
        });

        _saveSession();

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Sessão concluída e salva! Hora de fazer uma pausa.',
            ),
          ),
        );
      }
    });
  }

  Future<void> _saveSession() async {
    try {
      await Supabase.instance.client.from('study_sessions').insert({
        'method_name': widget.method.title,
        'duration_minutes': widget.method.workMinutes,
      });
    } catch (error) {
      debugPrint('Erro ao salvar sessão: $error');
    }
  }

  void _pauseTimer() {
    _timer?.cancel();

    setState(() {
      _isRunning = false;
    });
  }


  String _formatTime() {
    final minutes = _remainingSeconds ~/ 60;
    final seconds = _remainingSeconds % 60;

    return '${minutes.toString().padLeft(2, '0')}:'
        '${seconds.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sessão de Foco'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.method.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.primary,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                widget.method.description,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              Text(
                _formatTime(),
                style: const TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.primary,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: _isRunning ? null : _startTimer,
                    icon: const Icon(Icons.play_arrow),
                    label: const Text('Iniciar'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton.icon(
                    onPressed: _isRunning ? _pauseTimer : null,
                    icon: const Icon(Icons.pause),
                    label: const Text('Pausar'),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                'Pausa recomendada: ${widget.method.breakMinutes} minutos',
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}