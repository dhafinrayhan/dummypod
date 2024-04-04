import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import '../services.dart';
import '../widgets.dart';

class GetUserScreen extends HookWidget {
  const GetUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final idController = useTextEditingController();

    final result = useState('');

    Future<void> callEndpoint() async {
      final user = await client.users.getUser(int.parse(idController.text));

      result.value = user.toString();
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Get a single user')),
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
