import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenView extends GetView {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1CAE81),
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
                child: const Text(
                  "PUSKESMAS KABAT",
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
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
                child: const Text("Version 1.0",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              )
            ],
          )
        ],
      )),
    );
  }
}
