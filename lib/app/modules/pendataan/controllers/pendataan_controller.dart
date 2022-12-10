import 'package:get/get.dart';

class PendataanController extends GetxController {
  var searchPuskesmas = false.obs;
  var searchBayi = false.obs;

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
