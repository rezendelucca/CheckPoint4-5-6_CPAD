import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'screens/home_screen.dart';
import 'theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://nvttmlamxmfwbfauigru.supabase.co',
    publishableKey: 'sb_publishable_PS1d5u2s1-B-gLKINyL6Lw_hyqQzFV6',
  );

  runApp(const FocusFlowApp());
}

class FocusFlowApp extends StatefulWidget {
  const FocusFlowApp({super.key});

  @override
  State<FocusFlowApp> createState() => _FocusFlowAppState();
}

class _FocusFlowAppState extends State<FocusFlowApp> {
  bool isPremium = false;

  void activatePremium() {
    setState(() {
      isPremium = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FocusFlow',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: HomeScreen(
        isPremium: isPremium,
        onPremiumActivated: activatePremium,
      ),
    );
  }
}