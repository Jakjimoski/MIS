import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/joke.dart';

class ApiServices {
  final String baseUrl = "https://official-joke-api.appspot.com";

  Future<List<String>> fetchJokeTypes() async {
    final response = await http.get(Uri.parse('$baseUrl/types'));
    if (response.statusCode == 200) {
      return List<String>.from(json.decode(response.body));
    } else {
      throw Exception("Грешка при превземање");
    }
  }

  Future<List<Joke>> fetchJokeByType(String type) async {
    final response = await http.get(Uri.parse('$baseUrl/jokes/$type/ten'));
    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          .map((data) => Joke.fromJson(data))
          .toList();
    } else {
      throw Exception("Грешка при превземање");
    }
  }

  Future<Joke> fetchRandomJoke() async {
    final response = await http.get(Uri.parse('$baseUrl/random_joke'));
    if (response.statusCode == 200) {
      return Joke.fromJson(json.decode(response.body));
    } else {
      throw Exception("Грешка при превземање");
    }
  }
}
