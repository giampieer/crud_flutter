import 'package:crud_flutter/model/Cliente.dart';
import 'package:http/http.dart';

  Future<Cliente> fetchPost() async {
    final response =
    await http.get('https://jsonplaceholder.typicode.com/posts/1');

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return Cliente.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
