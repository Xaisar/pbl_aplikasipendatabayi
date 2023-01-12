import 'dart:convert';

import 'package:aplikasipendatabayi/app/data/models/bayi_model.dart';
import 'package:aplikasipendatabayi/app/data/models/posyandu_model.dart';
import 'package:aplikasipendatabayi/app/data/providers/posyandu_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PendataanController extends GetxController {
  var searchPuskesmas = false.obs;
  RxBool view = false.obs;
  RxBool nullSafety = false.obs;
  RxList<Posyandu> posyandu = (List<Posyandu>.of([])).obs;

  void listPosyandu() {
    PosyanduProvider().getPosyandu().then((response) {
      print(response.statusCode);
      if (response.statusCode == 200) {
        if (response.body["data"].length != 0) {
          print(response.body["data"][1].toString());
          print(response.body["data"].length);
          for (int i = 0; i < response.body["data"].length; i++) {
            var data = Posyandu.fromJson(response.body["data"][i]);
            posyandu.add(data);
          }
          print(posyandu.toString());
          view.value = true;
          nullSafety.value = true;
        } else {
          view.value = true;
          nullSafety.value = false;
        }
      } else {
        Get.snackbar("Error", "Server Sedang Terganggu \n Silahkan Coba lagi",
            backgroundColor: Colors.transparent, colorText: Colors.black);
        Get.back();
      }
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
    view.value = false;
    nullSafety.value = false;
    listPosyandu();
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
