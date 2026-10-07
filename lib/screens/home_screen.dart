import 'package:flutter/material.dart';

import '../models/study_method.dart';
import '../theme/app_theme.dart';
import 'study_screen.dart';
import 'premium_screen.dart';
import 'history_screen.dart';
import 'ad_banner.dart';
import 'stats_screen.dart';

class HomeScreen extends StatelessWidget {
  final bool isPremium;
  final VoidCallback onPremiumActivated;

  HomeScreen({
    super.key,
    required this.isPremium,
    required this.onPremiumActivated,
  });

  final List<StudyMethod> methods = [
    StudyMethod(
      title: 'Técnica Pomodoro',
      description: 'Foco total por 25 min com pausas curtas de 5 min.',
      pros: 'Combate a procrastinação e previne a fadiga mental.',
      workMinutes: 25,
      breakMinutes: 5,
    ),
    StudyMethod(
      title: 'Técnica Feynman',
      description: 'Estudo ativo explicando o assunto com palavras simples.',
      pros:
          'Identifica lacunas reais no aprendizado e fixa conceitos complexos.',
      workMinutes: 45,
      breakMinutes: 10,
    ),
    StudyMethod(
      title: 'Active Recall (Evocação Ativa)',
      description: 'Testar a memória sem olhar o material após a leitura.',
      pros:
          'Fortalece conexões neurais e melhora a retenção de longo prazo.',
      workMinutes: 30,
      breakMinutes: 5,
    ),
    StudyMethod(
      title: 'Sistema Leitner (Flashcards)',
      description:
          'Revisão espaçada de cartões organizados por nível de facilidade.',
      pros:
          'Prioriza o conteúdo mais difícil e otimiza o tempo de revisão.',
      workMinutes: 40,
      breakMinutes: 10,
    ),
    StudyMethod(
      title: 'Método de Estudo Livre',
      description:
          'Sessão de estudo flexível para revisar conteúdos no seu próprio ritmo.',
      pros:
          'Oferece liberdade para adaptar a sessão às necessidades do estudante.',
      workMinutes: 50,
      breakMinutes: 10,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FocusFlow - Métodos de Estudo'),
        actions: [
          // ESTATÍSTICAS
          IconButton(
            tooltip: 'Estatísticas',
            icon: const Icon(Icons.bar_chart),
            onPressed: () {
              if (isPremium) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StatsScreen(
                      isPremium: isPremium,
                    ),
                  ),
                );
              } else {
                _showPremiumDialog(
                  context,
                  'Estatísticas',
                  'As estatísticas de estudo estão disponíveis '
                      'exclusivamente para usuários Premium.',
                );
              }
            },
          ),

          // HISTÓRICO
          IconButton(
            tooltip: 'Histórico de estudos',
            icon: const Icon(Icons.history),
            onPressed: () {
              if (isPremium) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HistoryScreen(),
                  ),
                );
              } else {
                _showPremiumDialog(
                  context,
                  'Histórico',
                  'O histórico de estudos está disponível '
                      'exclusivamente para usuários Premium.',
                );
              }
            },
          ),

          // PREMIUM
          IconButton(
            tooltip: 'Focus Flow Premium',
            icon: Icon(
              isPremium
                  ? Icons.workspace_premium
                  : Icons.star_border,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PremiumScreen(
                    isPremium: isPremium,
                    onPremiumActivated: onPremiumActivated,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // ANÚNCIO SOMENTE PARA USUÁRIO GRATUITO
          if (!isPremium) const AdBanner(),

          // CARD PREMIUM
          Card(
            elevation: 3,
            margin: const EdgeInsets.only(bottom: 20),
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.workspace_premium,
                        color: AppTheme.accent,
                        size: 32,
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          'Focus Flow Premium',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    isPremium
                        ? 'Você está usando a versão Premium!'
                        : 'Estude sem anúncios e desbloqueie recursos avançados.',
                  ),
                  const SizedBox(height: 12),
                  if (!isPremium)
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PremiumScreen(
                                isPremium: isPremium,
                                onPremiumActivated:
                                    onPremiumActivated,
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.star),
                        label: const Text('Conhecer o Premium'),
                      ),
                    )
                  else
                    const Text(
                      '✓ Premium ativo',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
            ),
          ),

          // MÉTODOS DE ESTUDO
          ...methods.map(
            (method) {
              return Card(
                elevation: 2,
                margin: const EdgeInsets.only(bottom: 16),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        method.title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.primary,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(method.description),
                      const SizedBox(height: 8),
                      Text(
                        'Prós: ${method.pros}',
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          color: AppTheme.secondary,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pausa: ${method.breakMinutes} min',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.secondary,
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => StudyScreen(
                                    method: method,
                                  ),
                                ),
                              );
                            },
                            icon: const Icon(Icons.timer),
                            label: Text(
                              'Iniciar (${method.workMinutes} min)',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  void _showPremiumDialog(
    BuildContext context,
    String feature,
    String message,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            children: [
              Icon(
                Icons.workspace_premium,
                color: AppTheme.accent,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Recurso Premium',
                ),
              ),
            ],
          ),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Fechar'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PremiumScreen(
                      isPremium: isPremium,
                      onPremiumActivated:
                          onPremiumActivated,
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.star),
              label: const Text('Conhecer Premium'),
            ),
          ],
        );
      },
    );
  }
}