import 'dart:ffi';

import 'package:aplikasipendatabayi/app/data/models/bayi_model.dart';
import 'package:aplikasipendatabayi/app/data/models/bidan_model.dart';
import 'package:aplikasipendatabayi/app/data/models/penimbangan_model.dart';
import 'package:aplikasipendatabayi/app/data/models/posyandu_model.dart';
import 'package:aplikasipendatabayi/app/data/providers/bayi_provider.dart';
import 'package:aplikasipendatabayi/app/data/providers/bidan_provider.dart';
import 'package:aplikasipendatabayi/app/data/providers/penimbangan_provider.dart';
import 'package:aplikasipendatabayi/app/data/providers/posyandu_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool view = false.obs;
  RxBool nullSafety = false.obs;
  var bidan = Bidan();
  var posyandu = Posyandu();
  RxList<Penimbangan> riwayat = (List<Penimbangan>.of([])).obs;

  void isiData(int id) {
    BidanProvider().postBidan(id).then((responseBidan) {
      bidan = Bidan.fromJson(responseBidan.body);
      PosyanduProvider()
          .postPosyandu(bidan.idPosyandu!)
          .then((responsePosyandu) {
        posyandu = Posyandu.fromJson(responsePosyandu.body);
        isiRiwayat();
      });
    });
  }

  void isiRiwayat() {
    PenimbanganProvider().getPenimbangan().then((response1) {
      if (response1.body["data"].length != 0) {
        for (int i = 0; i < response1.body["data"].length; i++) {
          PosyanduProvider()
              .postPosyandu(response1.body["data"][i]["posyandu_id"])
              .then((response2) {
            print(response2.body);
            BayiProvider()
                .postBayis(response1.body["data"][i]["bayi_id"])
                .then((response3) {
              print(response3.body);
              var data = Penimbangan(
                  id: response1.body["data"][i]["id_penimbangan"],
                  idBayi: response1.body["data"][i]["bayi_id"],
                  idPosyandu: response1.body["data"][i]["posyandu_id"],
                  tinggi: response1.body["data"][i]["tinggi_badan"] as double,
                  berat: response1.body["data"][i]["berat_badan"] as double,
                  umur: response1.body["data"][i]["umur"],
                  posisi: response1.body["data"][i]["posisi"],
                  tanggal: response1.body["data"][i]["tanggal_pemeriksaan"],
                  bayi: Bayi.fromJson(response3.body),
                  posyandu: Posyandu.fromJson(response2.body));
              riwayat.add(data);
              print(data);
              print(riwayat);
              print(riwayat[0].bayi!.nama);
              print(riwayat[0].posyandu!.id);
              print(riwayat[0].posyandu!.nama);
              print(riwayat[0].bayi!.id);
              print(riwayat[0].tanggal);
            });
          });
        }
        view.value = true;
        nullSafety.value = true;
      } else {
        view.value = true;
        nullSafety.value = false;
      }
    });
  }

  @override
  void onInit() {
    view.value = false;
    nullSafety.value = false;
    isiData(Get.arguments);
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
