import 'package:flutter/material.dart';
import 'screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kelas Multi-Platform App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFEDEDED),
        primaryColor: const Color(0xFF2C3E50),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
