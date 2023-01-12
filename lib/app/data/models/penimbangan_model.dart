import 'package:aplikasipendatabayi/app/data/models/bayi_model.dart';
import 'package:aplikasipendatabayi/app/data/models/posyandu_model.dart';

class Penimbangan {
  int? id;
  String? idBayi;
  int? idPosyandu;
  double? tinggi;
  double? berat;
  String? umur;
  String? posisi;
  String? tanggal;
  Bayi? bayi;
  Posyandu? posyandu;

  Penimbangan(
      {this.id,
      this.idBayi,
      this.idPosyandu,
      this.tinggi,
      this.berat,
      this.umur,
      this.posisi,
      this.tanggal,
      this.bayi,
      this.posyandu});

  Penimbangan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idBayi = json['id_bayi'];
    idPosyandu = json['id_Posyandu'];
    tinggi = json['tinggi'];
    berat = json['berat'];
    posisi = json['posisi'];
    tanggal = json['tanggal'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['id_bayi'] = idBayi;
    data['id_Posyandu'] = idPosyandu;
    data['tinggi'] = tinggi;
    data['berat'] = berat;
    data['posisi'] = posisi;
    data['tanggal'] = tanggal;
    return data;
  }
}
