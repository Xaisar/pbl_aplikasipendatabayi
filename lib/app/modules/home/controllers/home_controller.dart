import 'dart:ffi';

import 'package:aplikasipendatabayi/app/data/models/bidan_model.dart';
import 'package:aplikasipendatabayi/app/data/models/penimbangan_model.dart';
import 'package:aplikasipendatabayi/app/data/models/posyandu_model.dart';
import 'package:aplikasipendatabayi/app/data/providers/bidan_provider.dart';
import 'package:aplikasipendatabayi/app/data/providers/posyandu_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var bidan = Bidan();
  var posyandu = Posyandu();
  var riwayat = List<Penimbangan>.empty();

  void isiData(int id) {
    BidanProvider().postBidan(id).then((responseBidan) {
      bidan = Bidan.fromJson(responseBidan.body);
      print(bidan.nama);
      print(bidan.idPosyandu);
      PosyanduProvider().postPosyandu(id).then((responsePosyandu) {
        posyandu = Posyandu.fromJson(responsePosyandu.body);
        print(posyandu.nama);
        print(posyandu.jadwal.toString());
      });
    });
  }

  void isiRiwayat() {}

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
