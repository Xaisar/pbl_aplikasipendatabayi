import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasipendatabayi/theme.dart';

import 'package:get/get.dart';

class DevelopmentView extends GetView {
  const DevelopmentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
            style: GoogleFonts.roboto(color: Colors.black),
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                    height: Get.width * 0.8,
                    width: Get.width,
                    child: Image.asset('assets/images/maintance.png')),
                Container(
                    alignment: Alignment.center,
                    // margin: const EdgeInsets.only(top: 15),
                    child: Text(
                      'Maaf, Halaman Ini \nSedang Dalam Pengembangan',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          color: Colors.grey[600], fontSize: 25),
                    )),
                SizedBox(
                  height: Get.height * 0.15,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: SizedBox(
                      height: 40,
                      width: Get.width * 0.92,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        style: TextButton.styleFrom(backgroundColor: green1),
                        child: Text(
                          'Kembali',
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))
              ],
            )
          ],
        ));
  }
}
