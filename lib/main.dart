import 'package:flutter/material.dart';

import 'package:qr_scanner/home/home_view.dart';
import 'package:qr_scanner/generate_qr/generate_qr_view.dart';
import 'package:qr_scanner/home/splash_screen.dart';
import 'package:qr_scanner/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlyNow',
      theme: AppTheme.themeData,
      
      initialRoute: '/splash',
      
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/home': (context) => HomeView(),
        '/generate': (context) => const GenerateQrView(),
      },
    );
  }
}