import 'package:app/features/landingpage/presentation/widgets/landingpage_drawer/header/drawer_header_account.dart';
import 'package:app/features/landingpage/presentation/widgets/landingpage_drawer/landingpage_drawer_iconbutton.dart';
import 'package:flutter/material.dart';

class LandingPageDrawerHeader extends StatelessWidget {
  const LandingPageDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Mijn account",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close))
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: DrawerHeaderAccount(),
          ),
          const LandingPageDrawerIconButton(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "Bestellingen",
          ),
          const LandingPageDrawerIconButton(
            icon: Icon(Icons.favorite_outline),
            label: "Favorieten",
          ),
        ],
      ),
    );
  }
}
