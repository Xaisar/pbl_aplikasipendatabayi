import 'package:aplikasipendatabayi/app/data/models/bayi_model.dart';
import 'package:aplikasipendatabayi/app/data/models/posyandu_model.dart';
import 'package:aplikasipendatabayi/app/data/providers/posyandu_provider.dart';
import 'package:get/get.dart';

class PendataanController extends GetxController {
  var searchPuskesmas = false.obs;
  var searchBayi = false.obs;
  var posyandu = List<Posyandu>.empty();
  // var bayi = List<Bayi>.empty();

  void listPosyandu() {
    PosyanduProvider().getPosyandu().then((response) {
      print(response.body.toString());
      print(response.statusCode);
      posyandu.add(response.body[0]['data']);
    });
  }

  void searchView(search) {
    search.value = true;
  }

  void searchClose(search) {
    search.value = false;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
