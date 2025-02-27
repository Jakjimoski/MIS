import 'package:flutter/material.dart';
import 'package:joke_2/models/joke.dart';

class JokeCard extends StatelessWidget {
  final Joke joke;
  JokeCard({required this.joke});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(joke.setup),
        subtitle: Text(joke.punchline),
      ),
    );
  }
}
