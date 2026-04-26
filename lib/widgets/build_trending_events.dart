import 'package:event_explorer/widgets/event_card.dart';
import 'package:event_explorer/detail_screen/event_detail_screen.dart';
import 'package:event_explorer/models/event_model.dart';
import 'package:flutter/material.dart';

Widget buildTrendingEvents(futureEvents) {
  return FutureBuilder<List<Event>>(
    future: futureEvents,
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Padding(
          padding: EdgeInsets.all(20),
          child: Center(child: CircularProgressIndicator()),
        );
      }

      if (snapshot.hasError) {
        return const Center(child: Text("Something went wrong"));
      }

      if (!snapshot.hasData || snapshot.data!.isEmpty) {
        return const Center(child: Text("No events found"));
      }

      final events = snapshot.data!;

      return ListView.builder(
        padding: EdgeInsets.all(0),
        itemCount: events.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final event = events[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => EventDetailScreen(event: event),
                ),
              );
            },
            child: EventCard(event: event),
          );
        },
      );
    },
  );
}
