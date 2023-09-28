import 'package:flutter/material.dart';

class TopHeaderWidget extends StatelessWidget {
  final String url;
  final List<String> items;

  const TopHeaderWidget({super.key, required this.url, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container();
      },
      itemCount: items.length,
    );
  }
}
