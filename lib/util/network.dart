import 'dart:convert';
import 'package:assignment/model/post%20model.dart';
import 'package:assignment/model/user%20model.dart';
import 'package:http/http.dart';

class Network
{
  final String url;

  Network(this.url);

  Future<User> getusers() async
  {
    var response = await get(Uri.encodeFull(url));
    if(response.statusCode == 200)
      {
        return new User.fromJson(json.decode(response.body));
      }
    else
      {
      throw Exception(response.statusCode);
      }
  }

  Future<PostList> getposts() async
  {
    var response = await get(Uri.encodeFull(url));
    if(response.statusCode == 200)
    {
      return PostList.fromJson(json.decode(response.body));
    }
    else
    {
      throw Exception(response.statusCode);
    }
  }
}
