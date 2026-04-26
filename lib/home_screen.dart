import 'package:event_explorer/widgets/build_cities_section.dart';
import 'package:event_explorer/models/event_model.dart';
import 'package:event_explorer/services/api_service.dart';
import 'package:event_explorer/widgets/build_Featured_Carousel.dart';
import 'package:event_explorer/widgets/build_category_icons.dart';
import 'package:event_explorer/widgets/build_search_bar.dart';
import 'package:event_explorer/widgets/build_trending_events.dart';
import 'package:event_explorer/widgets/top_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Event>> futureEvents;

  @override
  void initState() {
    super.initState();
    futureEvents = ApiService.fetchEvents();
  }

  Future<void> _refresh() async {
    setState(() {
      futureEvents = ApiService.fetchEvents();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        color: Theme.of(context).primaryColor,
        onRefresh: _refresh,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              buildTopBar(context),
              const SizedBox(height: 20),

              buildSearchBar(context),
              const SizedBox(height: 20),

              buildFeaturedCarousel(),
              const SizedBox(height: 20),

              buildCategoryIcons(),
              const SizedBox(height: 20),

              Heading(title: "Trending Events In India"),
              buildTrendingEvents(futureEvents),
              const SizedBox(height: 20),

              Heading(title: "Explore Cities"),
              buildCitiesSection(),
              const SizedBox(height: 20),

              Heading(title: "Popular Events In New Delhi"),
              buildTrendingEvents(futureEvents),
            ],
          ),
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  String title;
  Heading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
