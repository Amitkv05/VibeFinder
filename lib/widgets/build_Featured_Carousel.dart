import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Widget buildFeaturedCarousel() {
  final images = [
    "https://picsum.photos/400/200",
    "https://picsum.photos/400/201",
    "https://picsum.photos/400/202",
  ];

  return CarouselSlider(
    options: CarouselOptions(
      height: 180,
      enlargeCenterPage: true,
      autoPlay: true,
    ),
    items: images.map((url) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
        ),
        child: Container(
          padding: const EdgeInsets.all(12),
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: const LinearGradient(
              colors: [Colors.transparent, Colors.black54],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: const Text(
            "Music Festival",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      );
    }).toList(),
  );
}
