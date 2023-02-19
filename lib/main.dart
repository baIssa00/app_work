import 'package:app_work/auth/sign_in.screen.dart';
import 'package:app_work/home/home.screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SignInScreen.routeName: (context) => const SignInScreen(),
        // LibraryScreen.routeName: (context) => const LibraryScreen(),
        // ProfileScreen.routeName: (context) => const ProfileScreen(),
      },
    );
  }
}
