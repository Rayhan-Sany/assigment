import 'package:flutter/material.dart';
import 'package:assigment/constants/app_colors.dart';
import 'package:assigment/screens/profile_screen.dart';

/// Root application widget configuring global theme, title, and home screen.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}

