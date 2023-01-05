import 'dart:convert';

import 'package:aplikasipendatabayi/theme.dart';
import 'package:get/get.dart';

import '../models/posyandu_model.dart';

class PosyanduProvider extends GetConnect {
  String url = link;
  // @override
  // void onInit() {
  //   httpClient.defaultDecoder = (map) {
  //     if (map is Map<String, dynamic>) return Posyandu.fromJson(map);
  //     if (map is List)
  //       return map.map((item) => Posyandu.fromJson(item)).toList();
  //   };
  //   httpClient.baseUrl = 'YOUR-API-URL';
  // }

  Future<Response> getPosyandu() async {
    final response = await get("$url/api/viewAllPosyandu",
        headers: <String, String>{
          "Accept": "application/json",
          "Charset": "utf-8"
        });
    return response;
  }

  Future<Response> postPosyandu(int id) async {
    final dynamic body = json.encode({"id": id});

    final response = await post("$url/api/viewPosyandu", body,
        headers: <String, String>{
          "Accept": "application/json",
          "Charset": "utf-8"
        });
    return response;
  }

  Future<Response> deletePosyandu(int id) async => await delete('posyandu/$id');
}
