import 'package:aplikasipendatabayi/app/modules/login/views/login_view.dart';
import 'package:aplikasipendatabayi/app/modules/riwayat/views/edit_riwayat_view.dart';
import 'package:aplikasipendatabayi/app/modules/riwayat/views/riwayat_view.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Puskemas Kabat",
    // initialRoute: Routes.INDEX,
    // getPages: AppPages.routes,
    home: EditRiwayatView(),
  ));
}
