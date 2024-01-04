import 'package:app/features/catalog/presentation/views/catalog_screen.dart';
import 'package:app/shared/localizations_ext.dart';
import 'package:flutter/material.dart';

class LandingPageMainSearch extends StatefulWidget {
  const LandingPageMainSearch({super.key});

  @override
  State<LandingPageMainSearch> createState() => _LandingPageMainSearchState();
}

class _LandingPageMainSearchState extends State<LandingPageMainSearch> {
  final TextEditingController _controller = TextEditingController();
  bool _searchValueEmpty = false;
  final _formKey = GlobalKey<FormState>();
  String searchValue = "";

  /// Submit input of formField to the catalog page.
  /// The catalog page will use this to determine a location.
  void _searchSubmit() {
    if (!_formKey.currentState!.validate()) {
      const snackBar = SnackBar(
        content: Text("Error"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    }

    _formKey.currentState!.save();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CatalogScreen(location: searchValue),
      ),
    );
  }

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
          key: _formKey,
          child: SizedBox(
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: TextFormField(
                      controller: _controller,
                      onSaved: (newValue) => searchValue = newValue ?? "",
                      validator: (value) {
                        if (value == null) return "Empty";
                        if (value.isEmpty) return "Empty";
                        return null;
                      },
                      onChanged: (value) =>
                          setState(() => _searchValueEmpty = value.isEmpty),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 8.0),
                        hintText: AppLocalizations.of(context)!
                            .landingpage_search_hint,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        isDense: true,
                        errorStyle: const TextStyle(
                            color: Colors.transparent, fontSize: 0),
                      ),
                    ),
                  ),
                ),
                Opacity(
                    opacity: _searchValueEmpty ? 0 : 1,
                    child: IconButton(
                      onPressed: () {
                        _controller.clear();
                        setState(() {
                          _searchValueEmpty = true;
                        });
                      },
                      icon: const Icon(Icons.clear),
                    )),
                TextButton(
                  style: const ButtonStyle().copyWith(
                      backgroundColor: MaterialStatePropertyAll(
                        _searchValueEmpty
                            ? Theme.of(context).colorScheme.secondary
                            : Theme.of(context).colorScheme.primary,
                      ),
                      minimumSize:
                          const MaterialStatePropertyAll(Size(100, 0))),
                  child: Text(
                    AppLocalizations.of(context)!.landingpage_search_button,
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  onPressed: () => _searchSubmit(),
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
