import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: '/',
      routes: {
        // HomeScreen.routeName: (context) => const HomeScreen(),
        // CategorieScreen.routeName: (context) => const CategorieScreen(),
        // LibraryScreen.routeName: (context) => const LibraryScreen(),
        // ProfileScreen.routeName: (context) => const ProfileScreen(),
      },
    );
  }
}
