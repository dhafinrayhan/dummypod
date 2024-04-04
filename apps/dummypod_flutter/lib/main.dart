import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'quotes/get_all_quotes.dart';
import 'utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DummyPod Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.orange,
        inputDecorationTheme:
            const InputDecorationTheme(border: OutlineInputBorder()),
      ),
      home: const MyHomePage(title: 'DummyPod Example'),
    );
  }
}

class MyHomePage extends HookWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Get all quotes'),
            onTap: () => context.pushPage((_) => const GetAllQuotesScreen()),
          ),
        ],
      ),
    );
  }
}
