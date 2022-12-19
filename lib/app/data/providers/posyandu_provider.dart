import 'package:get/get.dart';

import '../models/posyandu_model.dart';

class PosyanduProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Posyandu.fromJson(map);
      if (map is List)
        return map.map((item) => Posyandu.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Posyandu?> getPosyandu(int id) async {
    final response = await get('posyandu/$id');
    return response.body;
  }

  Future<Response<Posyandu>> postPosyandu(Posyandu posyandu) async =>
      await post('posyandu', posyandu);
  Future<Response> deletePosyandu(int id) async => await delete('posyandu/$id');
}
