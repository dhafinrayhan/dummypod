import 'package:dummypod_client/dummypod_client.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import '../client.dart';
import '../widgets.dart';

class AddProductScreen extends HookWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final priceController = useTextEditingController();
    final discountPercentageController = useTextEditingController();
    final ratingController = useTextEditingController();
    final stockController = useTextEditingController();
    final brandController = useTextEditingController();
    final categoryController = useTextEditingController();
    final thumbnailController = useTextEditingController();
    final imagesController = useTextEditingController();

    final result = useState('');

    Future<void> callEndpoint() async {
      final product = await client.products.addProduct(Product(
        title: titleController.text,
        description: descriptionController.text,
        price: int.parse(priceController.text),
        discountPercentage: double.parse(discountPercentageController.text),
        rating: double.parse(ratingController.text),
        stock: int.parse(stockController.text),
        brand: brandController.text,
        category: categoryController.text,
        thumbnail: thumbnailController.text,
        images: imagesController.text.split('\n'),
      ));

      result.value = product.toString();
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Add a new product')),
      body: SingleChildScrollView(
        child: SeparatedColumn(
          separatorBuilder: () => const Gap(16),
          padding: const EdgeInsets.all(16),
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(labelText: 'Price'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: discountPercentageController,
              decoration:
                  const InputDecoration(labelText: 'Discount percentage'),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
            TextField(
              controller: ratingController,
              decoration: const InputDecoration(labelText: 'Rating'),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
            TextField(
              controller: stockController,
              decoration: const InputDecoration(labelText: 'Stock'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: brandController,
              decoration: const InputDecoration(labelText: 'Brand'),
            ),
            TextField(
              controller: categoryController,
              decoration: const InputDecoration(labelText: 'Category'),
            ),
            TextField(
              controller: thumbnailController,
              decoration: const InputDecoration(labelText: 'Thumbnail'),
              keyboardType: TextInputType.url,
            ),
            TextField(
              controller: imagesController,
              decoration: const InputDecoration(
                labelText: 'Images',
                helperText: 'Separate URLs with newline',
              ),
              keyboardType: TextInputType.multiline,
              maxLines: null,
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
