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
    final user = useState<User?>(null);

    final fullNameController = useTextEditingController();
    final ageController = useTextEditingController();
    final gender = useState<Gender?>(null);
    final phoneController = useTextEditingController();
    final birthDate = useState<DateTime?>(null);
    final bloodGroupController = useTextEditingController();
    final heightController = useTextEditingController();
    final weightController = useTextEditingController();
    final eyeColorController = useTextEditingController();
    final hairColorController = useTextEditingController();
    final hairTypeController = useTextEditingController();
    final domainController = useTextEditingController();
    final ipController = useTextEditingController();

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
        fullNameController.text = u.userInfo?.fullName ?? '';
        ageController.text = u.age?.toString() ?? '';
        gender.value = u.gender;
        phoneController.text = u.phone ?? '';
        birthDate.value = u.birthDate;
        bloodGroupController.text = u.bloodGroup ?? '';
        heightController.text = u.height?.toString() ?? '';
        weightController.text = u.weight?.toString() ?? '';
        eyeColorController.text = u.eyeColor ?? '';
        hairColorController.text = u.hair?.color ?? '';
        hairTypeController.text = u.hair?.type ?? '';
        domainController.text = u.domain ?? '';
        ipController.text = u.ip ?? '';
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
          gender: gender.value,
          phone: phoneController.text.isNotEmpty ? phoneController.text : null,
          birthDate: birthDate.value,
          bloodGroup: bloodGroupController.text.isNotEmpty
              ? bloodGroupController.text
              : null,
          height: heightController.text.isNotEmpty
              ? int.parse(heightController.text)
              : null,
          weight: weightController.text.isNotEmpty
              ? double.parse(weightController.text)
              : null,
          eyeColor: eyeColorController.text.isNotEmpty
              ? eyeColorController.text
              : null,
          hair: (hairColorController.text.isNotEmpty &&
                  hairTypeController.text.isNotEmpty)
              ? Hair(
                  color: hairColorController.text,
                  type: hairTypeController.text)
              : null,
          domain:
              domainController.text.isNotEmpty ? domainController.text : null,
          ip: ipController.text.isNotEmpty ? ipController.text : null,
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
              ItemPickerField<Gender>(
                value: gender.value,
                onChanged: (value) => gender.value = value,
                items: Gender.values,
                labelText: 'Gender',
              ),
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(labelText: 'Phone'),
                keyboardType: TextInputType.phone,
              ),
              DatePickerField(
                value: birthDate.value,
                onChanged: (value) => birthDate.value = value,
                labelText: 'Birth date',
              ),
              TextField(
                controller: bloodGroupController,
                decoration: const InputDecoration(labelText: 'Blood group'),
              ),
              TextField(
                controller: heightController,
                decoration: const InputDecoration(labelText: 'Height'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: weightController,
                decoration: const InputDecoration(labelText: 'Weight'),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              TextField(
                controller: eyeColorController,
                decoration: const InputDecoration(labelText: 'Eye color'),
              ),
              SeparatedRow(
                separatorBuilder: () => const Gap(16),
                children: [
                  Expanded(
                    child: TextField(
                      controller: hairColorController,
                      decoration:
                          const InputDecoration(labelText: 'Hair color'),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: hairTypeController,
                      decoration: const InputDecoration(labelText: 'Hair type'),
                    ),
                  ),
                ],
              ),
              TextField(
                controller: domainController,
                decoration: const InputDecoration(labelText: 'Domain'),
                keyboardType: TextInputType.url,
              ),
              TextField(
                controller: ipController,
                decoration: const InputDecoration(labelText: 'IP'),
                keyboardType: TextInputType.url,
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
