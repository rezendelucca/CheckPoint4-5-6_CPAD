import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class PremiumScreen extends StatelessWidget {
  final bool isPremium;
  final VoidCallback onPremiumActivated;

  const PremiumScreen({
    super.key,
    required this.isPremium,
    required this.onPremiumActivated,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Focus Flow Premium'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            Icon(
              Icons.workspace_premium,
              size: 80,
              color: AppTheme.accent,
            ),

            const SizedBox(height: 20),

            const Text(
              'Focus Flow Premium',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppTheme.primary,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              isPremium
                  ? 'Você já é Premium! Aproveite uma experiência sem anúncios.'
                  : 'Estude sem interrupções e desbloqueie recursos avançados.',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 30),

            _buildFeature(Icons.block, 'Sem anúncios'),
            _buildFeature(Icons.bar_chart, 'Estatísticas de estudo'),
            _buildFeature(Icons.history, 'Histórico de sessões'),
            _buildFeature(Icons.timer, 'Personalização dos tempos'),
            _buildFeature(Icons.calendar_month, 'Planejamento de estudos'),
            _buildFeature(Icons.palette, 'Temas personalizados'),

            const SizedBox(height: 30),

            if (!isPremium) ...[
              const Text(
                'R\$ 9,90 / mês',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    onPremiumActivated();

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Premium ativado! Os anúncios foram removidos.',
                        ),
                      ),
                    );

                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.star),
                  label: const Text('Assinar Premium'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.accent,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                  ),
                ),
              ),
            ] else ...[
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.green.withValues(alpha: 0.1),
                ),
                child: const Text(
                  '✓ Assinatura Premium ativa',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildFeature(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppTheme.accent,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const Icon(
            Icons.check,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
