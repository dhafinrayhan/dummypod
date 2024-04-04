import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'products/add_product.dart';
import 'products/delete_product.dart';
import 'products/get_all_products.dart';
import 'products/get_product.dart';
import 'products/update_product.dart';
import 'quotes/get_all_quotes.dart';
import 'quotes/get_quote.dart';
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
            title: const Text('Get all products'),
            onTap: () => context.pushPage((_) => const GetAllProductsScreen()),
          ),
          ListTile(
            title: const Text('Get a single product'),
            onTap: () => context.pushPage((_) => const GetProductScreen()),
          ),
          ListTile(
            title: const Text('Add a new product'),
            onTap: () => context.pushPage((_) => const AddProductScreen()),
          ),
          ListTile(
            title: const Text('Update a product'),
            onTap: () => context.pushPage((_) => const UpdateProductScreen()),
          ),
          ListTile(
            title: const Text('Delete a product'),
            onTap: () => context.pushPage((_) => const DeleteProductScreen()),
          ),
          const Divider(),
          ListTile(
            title: const Text('Get all quotes'),
            onTap: () => context.pushPage((_) => const GetAllQuotesScreen()),
          ),
          ListTile(
            title: const Text('Get a single quote'),
            onTap: () => context.pushPage((_) => const GetQuoteScreen()),
          ),
        ],
      ),
    );
  }
}
