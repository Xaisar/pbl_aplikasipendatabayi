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
        leading: Image.asset("assets/icons/panahback.png"),
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
                  width: 100,
                  decoration: BoxDecoration(
                      color: green1,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Text('Edit',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13))
                  // SizedBox(
                  //   child: Container(
                  //     width: 100,
                  //     height: 26,
                  //     child: TextButton(
                  //       style: TextButton.styleFrom(
                  //           backgroundColor: Color(0xFF1CAE81),
                  //           shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(20),
                  //           )),
                  //       onPressed: () {},
                  //       child: Text(
                  //         "Edit",
                  //         style: TextStyle(
                  //           color: Color(0xffffffff),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  ))
        ],
      ),
      body: Column(children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            color: Colors.white,
            margin: const EdgeInsets.only(bottom: 10),
            width: Get.width,
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey[400]!, width: 4))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(4),
                          alignment: Alignment.topLeft,
                          child: Text('NIK Bayi',
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: const Icon(
                                  Icons.abc,
                                  size: 30,
                                )),
                            Text("3510164409120005",
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    )),
                Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey[400]!, width: 4))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(4),
                          alignment: Alignment.topLeft,
                          child: Text('Nama Bayi',
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: const Icon(
                                  Icons.abc,
                                  size: 30,
                                )),
                            Text("Nur Lailatul Hidayah",
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    )),
                Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey[400]!, width: 4))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(4),
                          alignment: Alignment.topLeft,
                          child: Text('Tanggal Pelaksanaan',
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: const Icon(
                                  Icons.abc,
                                  size: 30,
                                )),
                            Text("08 / Maret / 2022",
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    )),
                Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey[400]!, width: 4))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(4),
                          alignment: Alignment.topLeft,
                          child: Text('Tempat Posyandu',
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: const Icon(
                                  Icons.abc,
                                  size: 30,
                                )),
                            Text("Jl.Bomo No.12 Rt.01 Rw.03. Pakistaji",
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    )),
              ],
            )),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            color: Colors.white,
            margin: const EdgeInsets.only(bottom: 15),
            width: Get.width,
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey[400]!, width: 4))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(4),
                          alignment: Alignment.topLeft,
                          child: Text('Nama Bidan',
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: const Icon(
                                  Icons.abc,
                                  size: 30,
                                )),
                            Text("Selena Gomez",
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    )),
              ],
            )),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            color: Colors.white,
            width: Get.width,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(4),
                            alignment: Alignment.topLeft,
                            child: Text('Tinggi Badan',
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Row(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: const Icon(
                                    Icons.abc,
                                    size: 30,
                                  )),
                              Text("76(-1.00)",
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold))
                            ],
                          )
                        ],
                      )),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(4),
                            alignment: Alignment.topLeft,
                            child: Text('Berat Badan',
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Row(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: const Icon(
                                    Icons.abc,
                                    size: 30,
                                  )),
                              Text(" 9(-1.00)",
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold))
                            ],
                          )
                        ],
                      )),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey[400]!, width: 4))),
            )),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            color: Colors.white,
            margin: const EdgeInsets.only(bottom: 10),
            width: Get.width,
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey[400]!, width: 4))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(4),
                          alignment: Alignment.topLeft,
                          child: Text('Umur',
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: const Icon(
                                  Icons.abc,
                                  size: 30,
                                )),
                            Text("3 Bulan 15 Hari",
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    )),
              ],
            )),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            color: Colors.white,
            width: Get.width,
            child: Column(children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Colors.grey[400]!, width: 4))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(4),
                        alignment: Alignment.topLeft,
                        child: Text('Posisi',
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                      ),
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Icon(
                                Icons.abc,
                                size: 30,
                              )),
                          Text("Terlentang",
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  )),
            ])),
      ]),
    );
  }
}
