import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  var verify = true.obs;
  void passwordVisibility() {
    verify.value = !verify.value;
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
