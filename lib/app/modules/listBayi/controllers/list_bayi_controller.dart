import 'package:aplikasipendatabayi/app/data/models/bayi_model.dart';
import 'package:aplikasipendatabayi/app/data/providers/bayi_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListBayiController extends GetxController {
  RxBool view = false.obs;
  RxBool nullSafety = false.obs;
  var searchBayi = false.obs;
  RxList<Bayi> bayi = (List<Bayi>.of([])).obs;

  void lisBayi() {
    BayiProvider().getBayis(Get.arguments).then((response) {
      print(response.statusCode);
      if (response.statusCode == 200) {
        if (response.body["data"].length != 0) {
          print(response.body["data"].length);
          for (int i = 0; i < response.body["data"].length; i++) {
            var data = Bayi(
                id: response.body["data"][i]["id_bayi"],
                nama: response.body["data"][i]["name_bayi"].toString(),
                idPosyandu: response.body["data"][i]["id_posyandu"],
                tglLahir: response.body["data"][i]["tgl_lahir"],
                jenisKelamin: response.body["data"][i]["jenis_kel"]);
            bayi.add(data);
          }
          print(bayi.toString());
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
    print(Get.arguments);
    nullSafety.value = false;
    view.value = false;
    lisBayi();
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
