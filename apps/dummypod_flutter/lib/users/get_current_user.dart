import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import '../services.dart';
import '../widgets.dart';

class GetCurrentUserScreen extends HookWidget {
  const GetCurrentUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useState('');

    Future<void> callEndpoint() async {
      final user = await client.users.getCurrentUser();

      result.value = user.toString();
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Get current auth user')),
      body: SingleChildScrollView(
        child: SeparatedColumn(
          separatorBuilder: () => const Gap(16),
          padding: const EdgeInsets.all(16),
          children: [
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
