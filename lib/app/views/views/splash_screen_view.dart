import 'package:aplikasipendatabayi/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenView extends GetView {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green1,
      body: Center(
          child: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: Get.width * 0.55,
                height: Get.width * 0.55,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/logo/puskesmas.png",
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 60),
                child: Text("PUSKESMAS KABAT",
                    style: GoogleFonts.acme(fontSize: 30, color: Colors.white)),
              )
            ],
          ),
          //Kata Vesion
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: Text("Version 1.0.1",
                    textAlign: TextAlign.center,
                    style:
                        GoogleFonts.roboto(fontSize: 18, color: Colors.white)),
              )
            ],
          )
        ],
      )),
    );
  }
}
