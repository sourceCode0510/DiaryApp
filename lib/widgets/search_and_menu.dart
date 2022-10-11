import 'package:flutter/material.dart';

class SearchAndMenu extends StatelessWidget {
  const SearchAndMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
            iconSize: 30.0,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.short_text_rounded),
            iconSize: 30.0,
          ),
        ],
      ),
    );
  }
}
