import 'dart:convert';

import 'package:aplikasipendatabayi/theme.dart';
import 'package:get/get.dart';

import '../models/bidan_model.dart';

class BidanProvider extends GetConnect {
  String url = link;
  // @override
  // void onInit() {
  //   httpClient.defaultDecoder = (map) {
  //     if (map is Map<String, dynamic>) return Bidan.fromJson(map);
  //     if (map is List) return map.map((item) => Bidan.fromJson(item)).toList();
  //   };
  //   httpClient.baseUrl = 'YOUR-API-URL';
  // }

  Future<Bidan?> getBidan(int id) async {
    final response = await get('bidan/$id');
    return response.body;
  }

  Future<Response> postBidan(int id) async {
    final dynamic body = json.encode({"id": id});

    final response = await post("$url/api/viewBidan", body,
        headers: <String, String>{
          "Accept": "application/json",
          "Charset": "utf-8"
        });
    return response;
  }

  Future<Response> deleteBidan(int id) async => await delete('bidan/$id');
}
