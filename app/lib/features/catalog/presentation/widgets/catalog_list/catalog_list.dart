import 'package:flutter/material.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = List.from(["Pizzariba", "McDonalds", "SushiTent"]);
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      list[index],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(list[index] + list[index]),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
