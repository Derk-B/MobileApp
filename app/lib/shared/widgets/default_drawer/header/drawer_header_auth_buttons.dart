import 'package:flutter/material.dart';

import '../../../../features/authentication/presentation/views/login_page.dart';
import '../../../../features/authentication/presentation/views/register_page.dart';

class DrawerHeaderAuthButtons extends StatelessWidget {
  const DrawerHeaderAuthButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LoginScreen()));
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              child: Text(
                "Inloggen",
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              )),
        ),
        const SizedBox(width: 16.0),
        Expanded(
          child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const RegisterPage()));
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              child: Text(
                "Registreren",
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              )),
        ),
      ],
    );
  }
}
