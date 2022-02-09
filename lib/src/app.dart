import 'package:flutter/material.dart';
import 'package:mews_moviedb_exercise/src/movies_featured/ui/movie_search_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MoviesFeaturedPage(),
    );
  }
}
