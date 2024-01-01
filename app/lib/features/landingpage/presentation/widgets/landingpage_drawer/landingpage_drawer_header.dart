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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
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
                      onPressed: () {},
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
            ),
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
