import 'package:flutter/material.dart';

class AdBanner extends StatelessWidget {
  const AdBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      elevation: 4,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Icon(
              Icons.ads_click,
              size: 40,
            ),
            const SizedBox(height: 10),
            const Text(
              'ANÚNCIO',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Espaço publicitário da versão gratuita',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Anúncio demonstrativo do Focus Flow.'),
                  ),
                );
              },
              child: const Text('Saiba mais'),
            ),
          ],
        ),
      ),
    );
  }
}
