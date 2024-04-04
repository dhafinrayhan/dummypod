import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import '../client.dart';
import '../widgets.dart';

class GetAllQuotesScreen extends HookWidget {
  const GetAllQuotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final limitController = useTextEditingController();
    final skipController = useTextEditingController();

    final result = useState('');

    Future<void> callEndpoint() async {
      final quotes = await client.quotes.getAllQuotes(
        limit: int.tryParse(limitController.text),
        skip: int.tryParse(skipController.text),
      );

      result.value = quotes.toString();
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Get all quotes')),
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
