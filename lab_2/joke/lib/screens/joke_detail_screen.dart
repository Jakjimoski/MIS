import 'package:flutter/material.dart';
import '../models/joke.dart';

class JokeDetailScreen extends StatelessWidget {
  final Joke joke;

  const JokeDetailScreen({super.key, required this.joke});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Random Joke')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Setup:', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(joke.setup),
            SizedBox(height: 10),
            Text('Punchline:', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(joke.punchline),
          ],
        ),
      ),
    );
  }
}
