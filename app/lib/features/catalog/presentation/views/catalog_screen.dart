import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  final String location;
  const CatalogScreen({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    List<String> list = List.from(["1", "2", "hallo"]);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(location),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.red,
                  child: Text(list[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
