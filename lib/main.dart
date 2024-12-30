import 'package:flutter/material.dart';
import 'views/home_view.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        textTheme: Typography.blackRedwoodCity,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
