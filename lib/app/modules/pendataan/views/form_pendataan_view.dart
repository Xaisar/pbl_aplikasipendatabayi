import 'package:aplikasipendatabayi/app/modules/pendataan/views/list_bayi_view.dart';
import 'package:aplikasipendatabayi/my_icon_icons.dart';
import 'package:aplikasipendatabayi/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:get/get.dart';

class FormPendataanView extends GetView {
  const FormPendataanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<String> pilihPoisi = ['Terlentang', 'Berdiri'];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          title: Text(
            'Back',
            style: GoogleFonts.roboto(
                color: Colors.black, fontWeight: FontWeight.w500),
          )),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          // color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //NIK
              Container(
                alignment: Alignment.topLeft,
                // margin: const EdgeInsets.only(top: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "NIK Bayi",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(right: 12),
                              child: Icon(MyIcon.people, color: green1)),
                          Text('362155401117',
                              style: GoogleFonts.roboto(
                                  color: Colors.black, fontSize: 15))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //Nama
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nama Bayi",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(right: 12),
                              child: Icon(MyIcon.people, color: green1)),
                          Text("Xavier Is'ad Ariel",
                              style: GoogleFonts.roboto(
                                  color: Colors.black, fontSize: 15))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //Lokasi
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lokasi",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: SizedBox(
                        height: 53,
                        child: TextFormField(
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 15),
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                MyIcon.home,
                                color: green1,
                              ),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              hintText: "Input Lokasi",
                              hintStyle: GoogleFonts.roboto(
                                  color: Colors.grey, fontSize: 15)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //Tinggi & Berat
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //tinggi
                    Flexible(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Tinggi Badan",
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: SizedBox(
                              height: 53,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                style: GoogleFonts.roboto(
                                    color: Colors.black, fontSize: 15),
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      MyIcon.tall,
                                      color: green1,
                                    ),
                                    border: const OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    hintText: "/cm",
                                    hintStyle: GoogleFonts.roboto(
                                        color: Colors.grey, fontSize: 15)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.1,
                    ),
                    //berat
                    Flexible(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Berat Badan",
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: SizedBox(
                              height: 53,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                style: GoogleFonts.roboto(
                                    color: Colors.black, fontSize: 15),
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      MyIcon.scales,
                                      color: green1,
                                    ),
                                    border: const OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    hintText: "/kg",
                                    hintStyle: GoogleFonts.roboto(
                                        color: Colors.grey, fontSize: 15)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //Tombol Input
              Container(
                alignment: Alignment.topCenter,
                margin: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: Get.width,
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: green1,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    onPressed: () {},
                    child: Text(
                      'Ambil Data',
                      style:
                          GoogleFonts.roboto(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
              //Umur
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Umur",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: SizedBox(
                        height: 53,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 15),
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.date_range,
                                color: green1,
                              ),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              hintText: "Input Umur Bayi",
                              hintStyle: GoogleFonts.roboto(
                                  color: Colors.grey, fontSize: 15)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Posisi
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Posisi",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: SizedBox(
                            height: 56,
                            child: DropdownButtonFormField(
                              hint: Text(
                                'Pilih Posisi',
                                style: GoogleFonts.roboto(
                                    fontSize: 14, color: Colors.grey),
                              ),
                              items: pilihPoisi.map((e) {
                                return DropdownMenuItem(
                                    value: e,
                                    child: Text(e,
                                        style:
                                            GoogleFonts.roboto(fontSize: 14)));
                              }).toList(),
                              onChanged: (val) {},
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    MyIcon.distance,
                                    color: green1,
                                  ),
                                  border: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                            ))),
                  ],
                ),
              ),
              //Tombol Simpan
              Container(
                alignment: Alignment.topCenter,
                margin: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: Get.width,
                  height: 45,
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: green1,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    onPressed: () {},
                    child: Text(
                      'Simpan',
                      style:
                          GoogleFonts.roboto(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
