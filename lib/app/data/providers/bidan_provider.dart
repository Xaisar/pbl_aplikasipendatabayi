import 'package:get/get.dart';

import '../models/bidan_model.dart';

class BidanProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Bidan.fromJson(map);
      if (map is List) return map.map((item) => Bidan.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Bidan?> getBidan(int id) async {
    final response = await get('bidan/$id');
    return response.body;
  }

  Future<Response<Bidan>> postBidan(Bidan bidan) async =>
      await post('bidan', bidan);
  Future<Response> deleteBidan(int id) async => await delete('bidan/$id');
}
