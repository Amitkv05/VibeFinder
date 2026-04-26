class Event {
  final int id;
  final String title;
  final String category;
  final String date;
  final String time;
  final String location;
  final String image;
  final String distance;
  final String description;

  Event({
    required this.id,
    required this.title,
    required this.category,
    required this.date,
    required this.time,
    required this.location,
    required this.image,
    required this.distance,
    required this.description,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json['id'],
      title: json['title'],
      category: json['category'],
      date: json['date'],
      time: json['time'],
      location: json['location'],
      image: json['image'],
      distance: json['distance'],
      description: json['description'],
    );
  }
}
