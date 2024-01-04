import 'package:app/shared/widgets/default_drawer/header/drawer_header_account_name.dart';
import 'package:app/shared/widgets/default_drawer/header/drawer_header_auth_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DrawerHeaderAccount extends StatelessWidget {
  const DrawerHeaderAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return DrawerHeaderAccountName(snapshot.data!.email ?? "");
          }

          return const DrawerHeaderAuthButtons();
        }));
  }
}
