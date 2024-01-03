import 'package:app/shared/localizations_ext.dart';
import 'package:flutter/material.dart';

class LandingPageMainSearch extends StatefulWidget {
  const LandingPageMainSearch({super.key});

  @override
  State<LandingPageMainSearch> createState() => _LandingPageMainSearchState();
}

class _LandingPageMainSearchState extends State<LandingPageMainSearch> {
  final TextEditingController _controller = TextEditingController();
  bool _showClearIcon = false;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 10),
      Container(
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: Form(
          child: SizedBox(
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: TextField(
                      controller: _controller,
                      onChanged: (value) =>
                          setState(() => _showClearIcon = value.isNotEmpty),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 8.0),
                        hintText: AppLocalizations.of(context)!
                            .landingpage_search_hint,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                ),
                Opacity(
                    opacity: _showClearIcon ? 1 : 0,
                    child: IconButton(
                      onPressed: () {
                        _controller.clear();
                        setState(() {
                          _showClearIcon = false;
                        });
                      },
                      icon: const Icon(Icons.clear),
                    )),
                TextButton(
                  style: const ButtonStyle().copyWith(
                      minimumSize:
                          const MaterialStatePropertyAll(Size(100, 0))),
                  child: Text(
                    AppLocalizations.of(context)!.landingpage_search_button,
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
