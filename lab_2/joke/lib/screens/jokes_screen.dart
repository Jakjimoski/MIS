import 'package:flutter/material.dart';
import '../models/joke.dart';
import '../services/api_services.dart';

class JokesScreen extends StatelessWidget {
  final String type;
  JokesScreen({super.key, required this.type});

  final ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$type Jokes')),
      body: FutureBuilder<List<Joke>>(
        future: apiService.fetchJokesByType(type),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final jokes = snapshot.data!;
            return ListView.builder(
              itemCount: jokes.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(jokes[index].setup),
                    subtitle: Text(jokes[index].punchline),
                  ),
                );
              },
            );
          } else {
            return Center(child: Text('No jokes found'));
          }
        },
      ),
    );
  }
}
