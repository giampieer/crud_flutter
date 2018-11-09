import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:crud_flutter/model/Cliente.dart';
import 'package:http/http.dart' as http;

Future<Cliente> fetchPost() async {
  final response =
  await http.get('https://jsonplaceholder.typicode.com/posts/1');
  if (response.statusCode == 200) {
    return Cliente.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load post');
  }
}


class Main_Screen_Page extends StatefulWidget {
  final String title;
  final Future<Cliente> post;

  Main_Screen_Page({Key key, this.post}) : super(key: key);

  @override
  _ScreenPageState createState() => _ScreenPageState();
}

class _ScreenPageState extends State<Main_Screen_Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder<Cliente>(
          future: post,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data.title);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    )
  }
}

