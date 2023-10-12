import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:week7_http_request/models/movie.dart';

class HttpService {
  final String apikey = 'a9b794d5f69c86b25898761d606e46c5';
  final String baseUrl = 'https://api.themoviedb.org/3/movie/popular?api_key=';

  Future<List?> getPopularMovies() async {
    final String url = baseUrl + apikey;

    http.Response result = await http.get(Uri.parse(url));
    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      final jsonResponse = jsonDecode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map((i) => Movie.fromJson(i)).toList();
      return movies;
    } else {
      print("Fail");
      return null;
    }
  }
}
