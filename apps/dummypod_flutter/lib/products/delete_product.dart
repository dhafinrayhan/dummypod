import 'package:dummypod_client/dummypod_client.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import '../client.dart';
import '../widgets.dart';

class DeleteProductScreen extends HookWidget {
  const DeleteProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final idController = useTextEditingController();
    final product = useState<Product?>(null);

    final result = useState('');

    Future<void> fetch() async {
      product.value =
          await client.products.getProduct(int.parse(idController.text));
    }

    Future<void> callEndpoint() async {
      final id = await client.products.deleteProduct(product.value!);

      result.value = id.toString();
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Delete a product')),
      body: SingleChildScrollView(
        child: SeparatedColumn(
          separatorBuilder: () => const Gap(16),
          padding: const EdgeInsets.all(16),
          children: [
            TextField(
              controller: idController,
              decoration: const InputDecoration(labelText: 'ID'),
              keyboardType: TextInputType.number,
            ),
            FilledButton(
              onPressed: fetch,
              child: const Text('Fetch'),
            ),
            if (product.value != null) ...[
              const Divider(),
              FilledButton(
                onPressed: callEndpoint,
                child: const Text('Call endpoint'),
              ),
              ResultView(result.value),
            ],
          ],
        ),
      ),
    );
  }
}
