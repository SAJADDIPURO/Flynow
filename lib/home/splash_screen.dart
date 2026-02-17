import 'dart:async';
import 'package:flutter/material.dart';
import 'package:qr_scanner/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.qr_code_scanner, 
              size: 100, 
              color: AppColors.darkBlue,
            ),
            const SizedBox(height: 20),
            const Text(
              'ScanGo',
              style: TextStyle(
                fontFamily: 'Outfit',
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: AppColors.darkBlue,
              ),
            ),
            const Text(
              'ticket scaner',
              style: TextStyle(
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}