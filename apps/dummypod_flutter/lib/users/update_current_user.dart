import 'package:dummypod_client/dummypod_client.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import '../services.dart';
import '../widgets.dart';

class UpdateCurrentUserScreen extends HookWidget {
  const UpdateCurrentUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    useListenable(sessionManager);

    final user = useState<User?>(null);

    final fullNameController =
        useTextEditingController(text: sessionManager.signedInUser!.fullName);
    final ageController = useTextEditingController();

    Future<void> fetch() async {
      user.value = await client.users.getCurrentUser();
    }

    useEffect(() {
      fetch();

      return null;
    }, []);

    useEffect(() {
      final u = user.value;
      if (u != null) {
        ageController.text = u.age?.toString() ?? '';
      }

      return null;
    }, [user.value]);

    final result = useState('');

    Future<void> callEndpoint() async {
      final updatedUser = await client.users.updateCurrentUser(
        user.value!.copyWith(
          age: ageController.text.isNotEmpty
              ? int.parse(ageController.text)
              : null,
        ),
        fullName:
            fullNameController.text.isNotEmpty ? fullNameController.text : null,
      );

      result.value = updatedUser.toString();

      // Refresh the current session so that it uses the updated data.
      sessionManager.refreshSession();
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Update current auth user')),
      body: SingleChildScrollView(
        child: SeparatedColumn(
          separatorBuilder: () => const Gap(16),
          padding: const EdgeInsets.all(16),
          children: [
            if (user.value != null) ...[
              TextField(
                controller: fullNameController,
                decoration: const InputDecoration(labelText: 'Full name'),
                keyboardType: TextInputType.name,
              ),
              TextField(
                controller: ageController,
                decoration: const InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
              ),
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
