import 'package:flutter/material.dart';

Widget buildSearchBar(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    margin: EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: Theme.of(context).primaryColor, width: 1.2),
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Search here...",
        prefixIcon: Icon(Icons.search, color: Colors.black),
        filled: true,
        fillColor: Colors.grey.shade200,
        contentPadding: const EdgeInsets.symmetric(vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}
