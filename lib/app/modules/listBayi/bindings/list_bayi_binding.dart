import 'package:get/get.dart';

import '../controllers/list_bayi_controller.dart';

class ListBayiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListBayiController>(
      () => ListBayiController(),
    );
  }
}
