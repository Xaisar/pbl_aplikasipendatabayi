import 'dart:convert';

import 'package:aplikasipendatabayi/theme.dart';
import 'package:get/get.dart';

import '../models/penimbangan_model.dart';

class PenimbanganProvider extends GetConnect {
  String url = link;
  // @override
  // void onInit() {
  //   httpClient.defaultDecoder = (map) {
  //     if (map is Map<String, dynamic>) return Penimbangan.fromJson(map);
  //     if (map is List)
  //       return map.map((item) => Penimbangan.fromJson(item)).toList();
  //   };
  //   httpClient.baseUrl = 'YOUR-API-URL';
  // }

  Future<Response> getPenimbangan() async {
    final dynamic body = json.encode({});
    final response = await post("$url/api/viewAllPenimbangan", body,
        headers: <String, String>{
          "Accept": "application/json",
          "Charset": "utf-8"
        });
    return response;
  }

  Future<Response<Penimbangan>> postPenimbangan(
          Penimbangan penimbangan) async =>
      await post('penimbangan', penimbangan);
  Future<Response> deletePenimbangan(int id) async =>
      await delete('penimbangan/$id');
}
