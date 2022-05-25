import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:msnger/msnger.dart';

class LoginRoute extends HookConsumerWidget {
  const LoginRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authManager = ref.watch(authManagerProvider);
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    Future<void> handleSubmit() async {
      final result = await authManager.login(
        usernameController.text.trim(),
        passwordController.text.trim(),
      );
      final scaffoldMessnager = ScaffoldMessenger.of(context);
      switch (result) {
        case LoginResult.success:
          // show nothing
          break;
        case LoginResult.incorrectData:
          scaffoldMessnager.showSnackBar(const SnackBar(
            content: Text('Incorrect username or password'),
          ));
          break;
        case LoginResult.error:
          scaffoldMessnager.showSnackBar(const SnackBar(
            content: Text('Network error'),
          ));
          break;
      }
    }

    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          constraints: const BoxConstraints(
            maxWidth: 300,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                controller: passwordController,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: handleSubmit,
                child: const Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
