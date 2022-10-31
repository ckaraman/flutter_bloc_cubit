// ignore: unused_import
import 'dart:convert';

import 'package:flutter_bloc_cubit/post.dart';
import 'package:http/http.dart' as http;

class DataService {
  final _baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<Post>> getPost() async {
    try {
      final uri = Uri.https(_baseUrl, '/posts');
      final response = await http.get(uri);

      final json = jsonDecode(response.body) as List;
      final posts = json.map((postJson) => Post.fromJson(postJson)).toList();
      return posts;
    } catch (e) {
      rethrow;
    }
  }
}
