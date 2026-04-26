import 'package:flutter/material.dart';

Widget buildCategoryIcons() {
  final categories = [
    {"icon": Icons.music_note, "name": "Music"},
    {"icon": Icons.mic_external_on_rounded, "name": "Concerts"},
    {"icon": Icons.party_mode, "name": "Parties"},
    {"icon": Icons.theater_comedy_rounded, "name": "Comedy"},
    {"icon": Icons.festival_outlined, "name": "Festivals"},
    {"icon": Icons.computer, "name": "Tech"},
    {"icon": Icons.sports, "name": "Sports"},
    {"icon": Icons.health_and_safety, "name": "Health"},
    {"icon": Icons.checkroom, "name": "Fashion"},
  ];

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Category",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final cat = categories[index];
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black, width: 1.2),
                      ),
                      child: Icon(cat["icon"] as IconData),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      cat["name"].toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}
