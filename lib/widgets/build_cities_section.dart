import 'package:flutter/material.dart';

Widget buildCitiesSection() {
  final cities = [
    {
      "name": "New Delhi",
      "events": "82+",
      "image": 'assets/cities_event/img.webp',
    },
    {
      "name": "Jaipur",
      "events": "15+",
      "image": 'assets/cities_event/img2.webp',
    },
    {
      "name": "Gurugram",
      "events": "16+",
      "image": 'assets/cities_event/img.webp',
    },
    {
      "name": "Chandigarh",
      "events": "25+",
      "image": 'assets/cities_event/img2.webp',
    },
  ];

  return Container(
    margin: const EdgeInsets.symmetric(vertical: 8),
    height: 160,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: cities.length,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      itemBuilder: (context, index) {
        final city = cities[index];

        return InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {},
          child: Container(
            width: 160,
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 16,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      city["image"]!,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) =>
                          const Icon(Icons.broken_image),
                    ),
                  ),

                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.9),
                            Colors.transparent,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    left: 12,
                    bottom: 12,
                    right: 12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          city["name"]!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "${city["events"]} events",
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}
