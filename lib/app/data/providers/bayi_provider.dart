import 'dart:convert';

import 'package:aplikasipendatabayi/theme.dart';
import 'package:get/get.dart';

import '../models/bayi_model.dart';

class BayiProvider extends GetConnect {
  String url = link;
  // @override
  // void onInit() {
  //   httpClient.defaultDecoder = (map) {
  //     if (map is Map<String, dynamic>) return Bayi.fromJson(map);
  //     if (map is List) return map.map((item) => Bayi.fromJson(item)).toList();
  //   };
  //   httpClient.baseUrl = 'YOUR-API-URL';
  // }

  // Future<Response> getBayi(id) async {
  //   final response = await post("$url/api/viewLimitAllBayi",
  //       headers: <String, String>{
  //         "Accept": "application/json",
  //         "Charset": "utf-8"
  //       });
  //   return response;
  // }
  Future<Response> getBayis(String id) async {
    final dynamic body = json.encode({"id": id});

    final response = await post("$url/api/viewLimitAllBayi", body,
        headers: <String, String>{
          "Accept": "application/json",
          "Charset": "utf-8"
        });
    return response;
  }

  Future<Response> postBayis(String id) async {
    final dynamic body = json.encode({"id": id});

    final response = await post("$url/api/viewBayi", body,
        headers: <String, String>{
          "Accept": "application/json",
          "Charset": "utf-8"
        });
    return response;
  }

  Future<Response> deleteBayi(int id) async => await delete('bayi/$id');
}
