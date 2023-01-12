import 'dart:convert';
import 'dart:ffi';

import 'package:aplikasipendatabayi/app/data/models/user_model.dart';
import 'package:aplikasipendatabayi/app/data/providers/user_provider.dart';
import 'package:aplikasipendatabayi/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginController extends GetxController {
  var user = User();
  var verify = true.obs;
  void passwordVisibility() {
    verify.value = !verify.value;
  }

  void login(context) {
    if (user.username != null && user.password != null) {
      if (user.username!.contains(RegExp('@'))) {
        UserProvider()
            .postUser(user.username!, user.password!)
            .then((response) {
          print(response.statusCode);
          if (response.statusCode == 200) {
            printError();
            user.fromJson(response.body);
            if (user.auth == true) {
              print(user.idPengguna);
              Get.offAllNamed(Routes.HOME, arguments: user.idPengguna);
            } else {
              Get.snackbar("Error", user.error!,
                  backgroundColor: Colors.transparent, colorText: Colors.white);
            }
          } else {
            Get.snackbar("Error", "Tidak Dapat Terhubung ke Server",
                backgroundColor: Colors.transparent, colorText: Colors.white);
          }
        });
      } else {
        Get.snackbar("Error", "Format Email Tidak Benar",
            backgroundColor: Colors.transparent, colorText: Colors.white);
      }
    } else {
      Get.snackbar("Error", "Data Tidak Boleh Kosong",
          backgroundColor: Colors.transparent, colorText: Colors.white);
    }
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
