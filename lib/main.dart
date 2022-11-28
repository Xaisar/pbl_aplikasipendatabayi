import 'package:aplikasipendatabayi/app/views/views/development_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Puskemas Kabat",
    // initialRoute: Routes.INDEX,
    // getPages: AppPages.routes,
    home: const DevelopmentView(),
  ));
}
