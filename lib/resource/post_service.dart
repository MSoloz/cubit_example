import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/post/post_model.dart';

class PostService {

  Future<List<Post>> getPosts()async{
    try {
      final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
      if(response.statusCode==200){
        final List<dynamic> data = json.decode(response.body);
        return data.map((item) => Post.fromJson(item)).toList();
      }else {
        throw Exception('Error while getting posts');
      }
    }catch(e){
      throw Exception(e.toString());
    }
  }
}