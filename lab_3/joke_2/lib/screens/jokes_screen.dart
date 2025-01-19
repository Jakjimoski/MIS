import 'package:flutter/material.dart';
import 'package:joke_2/models/joke.dart';
import 'package:joke_2/services/api_services.dart';

class JokesScreen extends StatelessWidget {
  final String jokeType;
  JokesScreen({required this.jokeType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$jokeType Jokes'),
      ),
      body: FutureBuilder<List<Joke>>(
        future: ApiServices().getJokesByType(jokeType),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No jokes found.'));
          }

          final jokes = snapshot.data!;
          return ListView.builder(
            itemCount: jokes.length,
            itemBuilder: (context, index) {
              final joke = jokes[index];
              return ListTile(
                title: Text(joke.setup),
                subtitle: Text(joke.punchline),
              );
            },
          );
        },
      ),
    );
  }
}
