import 'package:get/get.dart';

import '../controllers/form_penimbangan_controller.dart';

class FormPenimbanganBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormPenimbanganController>(
      () => FormPenimbanganController(),
    );
  }
}
