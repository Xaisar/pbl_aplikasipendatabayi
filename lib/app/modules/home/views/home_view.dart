import 'package:aplikasipendatabayi/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF57C7A3),
        leading: Image.asset(
          "assets/icons/garistiga.png",
        ),
        title: Container(
          alignment: Alignment.topRight,
          child: Text(
            "PUSKESMAS KABAT",
            style: TextStyle(color: Colors.black87),
          ),
        ),
        actions: [
          SizedBox(
            width: Get.width * 0.20,
            height: Get.width * 0.20,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset(
                "assets/logo/puskesmas.png",
                height: Get.width * 0.15,
                width: Get.width * 0.15,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: Get.width,
            child: Image.asset(
              "assets/images/backgroundmenu.png",
              fit: BoxFit.cover,
            ),
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage("assets/images/backgroundmenu.png"),
            //     // "assets/images/backgroundmenu.png",
            //     fit: BoxFit.fitHeight,
            //   ),
            // ),
          ),

          // Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage("assets/images/backgroundmenu.png"),
          //       // "assets/images/backgroundmenu.png",
          //       fit: BoxFit.fitHeight,
          //     ),
          //   ),
          // width: Get.width,
          // child: Image.asset(
          //   "assets/images/backgroundmenu.png",
          //   fit: BoxFit.cover,
        ],
      ),
    );
  }
}
