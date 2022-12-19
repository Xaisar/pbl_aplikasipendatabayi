import 'package:flutter/material.dart';
import 'package:aplikasipendatabayi/theme.dart';
import 'package:aplikasipendatabayi/my_icon_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EditRiwayatView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[400],
          leading: Image.asset("assets/icons/panahback.png"),
          title: Text('Back',
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              )),
        ),
        body: Column(children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              color: Colors.white,
              margin: const EdgeInsets.only(bottom: 10),
              width: Get.width,
              child: Column(children: [
                Container(
                    padding: const EdgeInsets.only(bottom: 10),
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
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                        )
                      ],
                    ))
              ]))
        ]));
  }
}
