import 'package:dummypod_client/dummypod_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import 'products/add_product.dart';
import 'products/delete_product.dart';
import 'products/get_all_products.dart';
import 'products/get_product.dart';
import 'products/update_product.dart';
import 'quotes/get_all_quotes.dart';
import 'quotes/get_quote.dart';
import 'quotes/get_random_quote.dart';
import 'services.dart';
import 'users/get_all_users.dart';
import 'users/get_current_user.dart';
import 'users/get_user.dart';
import 'utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  client = Client(
    'http://$localhost:8080/',
    authenticationKeyManager: FlutterAuthenticationKeyManager(),
  )..connectivityMonitor = FlutterConnectivityMonitor();

  sessionManager = SessionManager(
    caller: client.modules.auth,
  );
  await sessionManager.initialize();

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
    useListenable(sessionManager);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Signed in user ID'),
            subtitle: Text((sessionManager.signedInUser?.id).toString()),
            trailing: sessionManager.isSignedIn
                ? ElevatedButton.icon(
                    onPressed: () => sessionManager.signOut(),
                    label: const Text('Sign out'),
                    icon: const Icon(Icons.logout),
                    style: const ButtonStyle(
                        elevation: MaterialStatePropertyAll(0)),
                  )
                : SignInWithEmailButton(
                    caller: client.modules.auth,
                    style: const ButtonStyle(
                        elevation: MaterialStatePropertyAll(0)),
                  ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Get all products'),
            subtitle: const Text('+ Search products'),
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
            title: const Text('Get all users'),
            subtitle: const Text('+ Search users'),
            onTap: () => context.pushPage((_) => const GetAllUsersScreen()),
          ),
          ListTile(
            title: const Text('Get current auth user'),
            onTap: () => context.pushPage((_) => const GetCurrentUserScreen()),
          ),
          ListTile(
            title: const Text('Get a single user'),
            onTap: () => context.pushPage((_) => const GetUserScreen()),
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
          ListTile(
            title: const Text('Get a random quote'),
            onTap: () => context.pushPage((_) => const GetRandomQuoteScreen()),
          ),
        ],
      ),
    );
  }
}
