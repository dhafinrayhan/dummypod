import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import '../services.dart';
import '../widgets.dart';

class GetAllRecipesScreen extends HookWidget {
  const GetAllRecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final limitController = useTextEditingController();
    final skipController = useTextEditingController();
    final searchController = useTextEditingController();

    final result = useState('');

    Future<void> callEndpoint() async {
      final recipes = await client.recipes.getAllRecipes(
        limit: int.tryParse(limitController.text),
        skip: int.tryParse(skipController.text),
        search: searchController.text,
      );

      result.value = recipes.toString();
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Get all recipes')),
      body: SingleChildScrollView(
        child: SeparatedColumn(
          separatorBuilder: () => const Gap(16),
          padding: const EdgeInsets.all(16),
          children: [
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
            TextField(
              controller: searchController,
              decoration: const InputDecoration(labelText: 'Search'),
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