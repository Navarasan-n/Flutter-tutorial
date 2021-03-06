import 'dart:convert';

import 'package:flutter_tutorial/post.dart';
import 'package:http/http.dart' as http;

class ApiService {


  static String _todos = "https://jsonplaceholder.typicode.com/posts";

  static Future<List<Post>> getData() async {

    var response = await http.get(Uri.parse(_todos));
    List<Post> result;

    print(response.statusCode);

    if (response.statusCode == 200) {
      String jsonResponse = response.body;
      // print(jsonResponse);

      List _resultData = json.decode(jsonResponse);
      result = [];

      _resultData.forEach((data) {
        result.add(Post.fromJson(data));
      });

      // print("Result is .. ");
      print(result);

    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return result;
  }

  static Future<Post> getPost(int id) async {

    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/$id"));
    Post result;

    print(response.statusCode);

    if (response.statusCode == 200) {
      String jsonResponse = response.body;
      // print(jsonResponse);

      Map _resultData = json.decode(jsonResponse);

      result = Post.fromJson(_resultData);

      // print("Result is .. ");
      print(result);

    } else {
      throw "Something went wrong";
    }

    return result;
  }



  postData() {

  }

}