import 'package:aplikasipendatabayi/app/data/models/penimbangan_model.dart';
import 'package:get/get.dart';

class RiwayatController extends GetxController {
  var penimbangan = Penimbangan();

  @override
  void onInit() {
    penimbangan = Get.arguments;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
