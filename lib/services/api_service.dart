import 'dart:convert';
import 'package:event_explorer/models/event_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String url = "https://event-finder.free.beeceptor.com/events";

  static Future<List<Event>> fetchEvents() async {
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        List data = jsonDecode(response.body);
        return data.map((e) => Event.fromJson(e)).toList();
      } else {
        throw Exception("Failed to load events");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }
}
