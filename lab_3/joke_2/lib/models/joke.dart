class Joke {
  final String id;
  final String type;
  final String setup;
  final String punchline;

  Joke(
      {required this.id,
      required this.type,
      required this.setup,
      required this.punchline});

  factory Joke.fromJson(Map<String, dynamic> json) {
    return Joke(
      id: json['id'].toString(),
      type: json['type'],
      setup: json['setup'],
      punchline: json['punchline'],
    );
  }
}
