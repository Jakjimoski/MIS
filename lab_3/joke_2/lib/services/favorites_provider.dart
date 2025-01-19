import 'package:flutter/material.dart';
import 'package:joke_2/models/joke.dart';

class FavoritesProvider with ChangeNotifier {
  List<Joke> _favorites = [];

  List<Joke> get favorites => _favorites;

  void addFavorite(Joke joke) {
    _favorites.add(joke);
    notifyListeners();
  }

  void removeFavorite(Joke joke) {
    _favorites.remove(joke);
    notifyListeners();
  }
}
