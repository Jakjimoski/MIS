import 'package:flutter/material.dart';
import 'package:joke_2/models/joke.dart';
import 'package:joke_2/services/favorites_provider.dart';
import 'package:provider/provider.dart';

class JokeDetailScreen extends StatelessWidget {
  final Joke joke;
  JokeDetailScreen({required this.joke});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Joke Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(joke.setup, style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text(joke.punchline, style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                Provider.of<FavoritesProvider>(context, listen: false)
                    .addFavorite(joke);
              },
            ),
          ],
        ),
      ),
    );
  }
}
