import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import '../services.dart';
import '../widgets.dart';

class GetAllProductsScreen extends HookWidget {
  const GetAllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();
    final limitController = useTextEditingController();
    final skipController = useTextEditingController();

    final result = useState('');

    Future<void> callEndpoint() async {
      final products = await client.products.getAllProducts(
        search: searchController.text,
        limit: int.tryParse(limitController.text),
        skip: int.tryParse(skipController.text),
      );

      result.value = products.toString();
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Get all products')),
      body: SingleChildScrollView(
        child: SeparatedColumn(
          separatorBuilder: () => const Gap(16),
          padding: const EdgeInsets.all(16),
          children: [
            TextField(
              controller: searchController,
              decoration: const InputDecoration(labelText: 'Search'),
            ),
            TextField(
              controller: limitController,
              decoration: const InputDecoration(labelText: 'Limit'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: skipController,
              decoration: const InputDecoration(labelText: 'Skip'),
              keyboardType: TextInputType.number,
            ),
            FilledButton(
              onPressed: callEndpoint,
              child: const Text('Call endpoint'),
            ),
            ResultView(result.value),
          ],
        ),
      ),
    );
  }
}
