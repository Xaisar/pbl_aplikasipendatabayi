import 'package:aplikasipendatabayi/app/modules/login/views/login_view.dart';

import 'package:aplikasipendatabayi/app/modules/pendataan/views/form_pendataan_view.dart';
import 'package:aplikasipendatabayi/app/modules/pendataan/views/pendataan_view.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Puskemas Kabat",
    // initialRoute: Routes.INDEX,
    // getPages: AppPages.routes,

    home: FormPendataanView(),
  ));
}
