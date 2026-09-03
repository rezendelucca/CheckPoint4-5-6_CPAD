import 'package:flutter/material.dart';

void main() {
  runApp(const FocusPointApp());
}

class FocusPointApp extends StatelessWidget {
  const FocusPointApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FocusPoint',
      theme: ThemeData(
        fontFamily: 'Inter',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const Color roxo = Color(0xFF2D015C);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: roxo,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'FocusPoint - Métodos de Estudo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          MetodoCard(
            titulo: 'Técnica Pomodoro',
            descricao:
                'Foco total por 25 min com pausas curtas de 5 min.',
            pros:
                'Combate a procrastinação e previne a fadiga mental.',
            pausa: '5 min',
            tempo: '25 min',
          ),
          MetodoCard(
            titulo: 'Técnica Feynman',
            descricao:
                'Estudo ativo explicando o assunto com palavras simples.',
            pros:
                'Identifica lacunas reais no aprendizado e fixa conceitos complexos.',
            pausa: '10 min',
            tempo: '45 min',
          ),
          MetodoCard(
            titulo: 'Active Recall (Evocação Ativa)',
            descricao:
                'Testar a memória sem olhar o material após a leitura.',
            pros:
                'Fortalece conexões neurais e melhora a retenção de longo prazo.',
            pausa: '5 min',
            tempo: '30 min',
          ),
          MetodoCard(
            titulo: 'Sistema Leitner (Flashcards)',
            descricao:
                'Revisão espaçada de cartões organizados por nível de facilidade.',
            pros:
                'Prioriza o conteúdo mais difícil e otimiza o tempo de revisão.',
            pausa: '10 min',
            tempo: '40 min',
          ),
        ],
      ),
    );
  }
}

class MetodoCard extends StatelessWidget {
  final String titulo;
  final String descricao;
  final String pros;
  final String pausa;
  final String tempo;

  const MetodoCard({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.pros,
    required this.pausa,
    required this.tempo,
  });

  // Paleta oficial do FocusPoint
  static const Color roxo = Color(0xFF2D015C);
  static const Color laranja = Color(0xFFF29D01);
  static const Color verde = Color(0xFF087F5B);
  static const Color cinza = Color(0xFFD9D9D9);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cinza,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                color: roxo,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            Text(
              descricao,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              'Prós: $pros',
              style: const TextStyle(
                color: verde,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 14),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pausa: $pausa',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: laranja,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Iniciar $tempo',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}