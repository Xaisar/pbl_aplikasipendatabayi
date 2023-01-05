import 'dart:convert';
import 'dart:ffi';

import 'package:aplikasipendatabayi/theme.dart';
import 'package:get/get.dart';

import '../models/user_model.dart';

class UserProvider extends GetConnect {
  String url = link;
  // @override
  // void onInit() {
  //   httpClient.defaultDecoder = (map) {
  //     if (map is Map<String, dynamic>) return User.fromJson(map);
  //     if (map is List) return map.map((item) => User.fromJson(item)).toList();
  //   };
  //   httpClient.baseUrl = 'YOUR-API-URL';
  // }

  Future<User?> getUser(int id) async {
    final response = await get('user/$id');
    return response.body;
  }

  Future<Response> postUser(String username, String password) async {
    final dynamic body =
        json.encode({"username": username, "password": password});

    final response = await post("$url/api/login", body,
        headers: <String, String>{
          "Accept": "application/json",
          "Charset": "utf-8"
        });
    return response;
  }

  Future<Response> deleteUser(int id) async => await delete('user/$id');
}
