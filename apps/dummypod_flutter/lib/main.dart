import 'package:dummypod_client/dummypod_client.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
var client = Client('http://$localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

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
    // Products
    final productsLimitController = useTextEditingController();
    final productsSkipController = useTextEditingController();
    final productIdController = useTextEditingController(text: '1');

    // Quotes
    final quotesLimitController = useTextEditingController();
    final quotesSkipController = useTextEditingController();
    final quoteIdController = useTextEditingController(text: '1');

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: SeparatedColumn(
          separatorBuilder: () => const Gap(16),
          padding: const EdgeInsets.all(16),
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Products
            SeparatedRow(
              separatorBuilder: () => const Gap(8),
              children: [
                Expanded(
                  child: TextField(
                    controller: productsLimitController,
                    decoration: const InputDecoration(labelText: 'Limit'),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: productsSkipController,
                    decoration: const InputDecoration(labelText: 'Skip'),
                    keyboardType: TextInputType.number,
                  ),
                ),
                RequestButton(
                  label: 'Get all products',
                  onRequest: () async {
                    final products = await client.products.getAllProducts(
                      limit: int.tryParse(productsLimitController.text),
                      skip: int.tryParse(productsSkipController.text),
                    );
                    return products;
                  },
                ),
              ],
            ),
            SeparatedRow(
              separatorBuilder: () => const Gap(8),
              children: [
                Expanded(
                  child: TextField(
                    controller: productIdController,
                    decoration: const InputDecoration(labelText: 'ID'),
                    keyboardType: TextInputType.number,
                  ),
                ),
                RequestButton(
                  label: 'Get a single product',
                  onRequest: () async {
                    final id = int.parse(productIdController.text);
                    final product = await client.products.getProduct(id);
                    return product;
                  },
                ),
              ],
            ),

            const Divider(),

            // Quotes
            SeparatedRow(
              separatorBuilder: () => const Gap(8),
              children: [
                Expanded(
                  child: TextField(
                    controller: quotesLimitController,
                    decoration: const InputDecoration(labelText: 'Limit'),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: quotesSkipController,
                    decoration: const InputDecoration(labelText: 'Skip'),
                    keyboardType: TextInputType.number,
                  ),
                ),
                RequestButton(
                  label: 'Get all quotes',
                  onRequest: () async {
                    final quotes = await client.quotes.getAllQuotes(
                      limit: int.tryParse(quotesLimitController.text),
                      skip: int.tryParse(quotesSkipController.text),
                    );
                    return quotes;
                  },
                ),
              ],
            ),
            SeparatedRow(
              separatorBuilder: () => const Gap(8),
              children: [
                Expanded(
                  child: TextField(
                    controller: quoteIdController,
                    decoration: const InputDecoration(labelText: 'ID'),
                    keyboardType: TextInputType.number,
                  ),
                ),
                RequestButton(
                  label: 'Get a single quote',
                  onRequest: () async {
                    final id = int.parse(quoteIdController.text);
                    final quote = await client.quotes.getQuote(id);
                    return quote;
                  },
                ),
              ],
            ),
            RequestButton(
              label: 'Get a random quote',
              onRequest: () async {
                final quote = await client.quotes.getRandomQuote();
                return quote;
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RequestButton extends StatelessWidget {
  const RequestButton({
    super.key,
    required this.onRequest,
    required this.label,
  });

  final Future<Object?> Function() onRequest;
  final String label;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () async {
        final result = await onRequest();

        if (!context.mounted) return;
        showDialog(
          context: context,
          builder: (_) => SimpleDialog(
            title: Text(label),
            contentPadding: const EdgeInsets.all(16),
            children: [
              Text(result.toString()),
            ],
          ),
        );
      },
      child: Text(label),
    );
  }
}
