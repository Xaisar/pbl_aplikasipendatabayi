import 'package:get/get.dart';

import '../models/user_model.dart';

class UserProvider extends GetConnect {
  String url =
      "https://posyandu-digital-default-rtdb.asia-southeast1.firebasedatabase.app/";
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

  Future<dynamic> postUser(String username, String password) async {
    final response = await post(
        "$url" + 'user.json', {"username": username, "password": password});
    return response.body;
  }

  Future<Response> deleteUser(int id) async => await delete('user/$id');
}
