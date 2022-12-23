import 'package:aplikasipendatabayi/my_icon_icons.dart';
import 'package:aplikasipendatabayi/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/riwayat_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class RiwayatView extends GetView<RiwayatController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[400],
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Get.back();
            },
          ),
          title: Text('Detail Riwayat Bayi',
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              )),
          actions: [
            TextButton(
                onPressed: () {},
                child: Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                        color: green1,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                    child: Text('Edit',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13))))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(15),
                width: Get.width,
                color: Colors.white,
                child: Column(
                  children: [
                    listItem("NIK Bayi", "362155401117", MyIcon.people),
                    listItem("Nama Bayi", "Xavier Is'ad Ariel", MyIcon.people),
                    listItem("Tanggal", "18 Desember 2022", Icons.date_range),
                    listItem("Tempat", "Posyandu Anggrek", MyIcon.home),
                  ],
                )),
            Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(15),
                width: Get.width,
                color: Colors.white,
                child: Column(children: [
                  listItem("Bidan", "Della Marisa", MyIcon.people)
                ])),
            Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(15),
                width: Get.width,
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                          child: listItem("Tinggi Badan", "65", MyIcon.tall)),
                      SizedBox(
                        width: Get.width * 0.1,
                      ),
                      Flexible(
                          child: listItem("Berat Badan", "9,56", MyIcon.scales))
                    ])),
            Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(15),
                width: Get.width,
                color: Colors.white,
                child: Column(children: [
                  listItem("Umur", "9" + " bulan", Icons.date_range),
                  listItem("Posisi", "Terlentang", MyIcon.distance)
                ])),
          ]),
        ));
  }

  Container listItem(String title, String isi, var icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Colors.grey[400]!, width: 3))),
      child: Column(children: [
        Container(
            margin: const EdgeInsets.only(bottom: 5),
            alignment: Alignment.topLeft,
            child: Text(title,
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold))),
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(bottom: 5),
          child: Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 8),
                  child: Icon(
                    icon,
                    color: green1,
                    size: 23,
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Text(isi,
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600)))
            ],
          ),
        )
      ]),
    );
  }
}
