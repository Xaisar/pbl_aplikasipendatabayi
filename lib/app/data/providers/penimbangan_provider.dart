import 'package:get/get.dart';

import '../models/penimbangan_model.dart';

class PenimbanganProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Penimbangan.fromJson(map);
      if (map is List)
        return map.map((item) => Penimbangan.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Penimbangan?> getPenimbangan(int id) async {
    final response = await get('penimbangan/$id');
    return response.body;
  }

  Future<Response<Penimbangan>> postPenimbangan(
          Penimbangan penimbangan) async =>
      await post('penimbangan', penimbangan);
  Future<Response> deletePenimbangan(int id) async =>
      await delete('penimbangan/$id');
}
