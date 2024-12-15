import 'package:flutter/material.dart';
import '../services/api_services.dart';
import './jokes_screen.dart';
import './joke_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ApiService apiService = ApiService();
  List<String> jokeTypes = [];

  @override
  void initState() {
    super.initState();
    fetchTypes();
  }

  void fetchTypes() async {
    try {
      final types = await apiService.fetchJokeTypes();
      setState(() {
        jokeTypes = types;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Joke Types'),
        actions: [
          IconButton(
            icon: Icon(Icons.casino),
            onPressed: () async {
              final randomJoke = await apiService.fetchRandomJoke();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => JokeDetailScreen(joke: randomJoke),
                ),
              );
            },
          ),
        ],
      ),
      body: jokeTypes.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: jokeTypes.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(jokeTypes[index]),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              JokesScreen(type: jokeTypes[index]),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
