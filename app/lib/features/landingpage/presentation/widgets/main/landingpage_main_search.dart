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
      Form(
        child: SizedBox(
          height: 56,
          child: Stack(children: [
            TextField(
              controller: _controller,
              onChanged: (value) =>
                  setState(() => _showClearIcon = value.isNotEmpty),
              decoration: InputDecoration(
                hintText: "Adres, b.v. Amstelplein 10",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: const BorderSide(color: Colors.black)),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(4.0),
              child: Row(
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
                        height: 2.4,
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ]),
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
