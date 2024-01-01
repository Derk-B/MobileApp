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
          border: Border.all(color: Colors.black, width: 0.5),
        ),
        child: Form(
          child: Stack(
            children: [
              TextField(
                controller: _controller,
                onChanged: (value) =>
                    setState(() => _showClearIcon = value.isNotEmpty),
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                  hintText: "Adres, b.v. Amstelplein 10",
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _showClearIcon
                      ? IconButton(
                          onPressed: () {
                            _controller.clear();
                            setState(() {
                              _showClearIcon = false;
                            });
                          },
                          icon: const Icon(Icons.clear),
                        )
                      : Container(),
                  TextButton(
                    child: Text(
                      "    Zoek    ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
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
