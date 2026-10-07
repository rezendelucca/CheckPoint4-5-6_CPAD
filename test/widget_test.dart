import 'package:flutter_test/flutter_test.dart';
import 'package:focus_flow/main.dart';

void main() {
  testWidgets('Verifica se a tela inicial carrega o título do FocusFlow', (WidgetTester tester) async {
    // Carrega o aplicativo
    await tester.pumpWidget(const FocusFlowApp());

    // Verifica se o título da AppBar está visível
    expect(find.text('FocusFlow - Métodos de Estudo'), findsOneWidget);
  });
}