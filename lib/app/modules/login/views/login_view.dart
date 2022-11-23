import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFF1CAE81),
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              //Logo dan nama puskesmas
              puskesmas(),
              //form login
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: const BorderRadiusDirectional.only(
                    topStart: Radius.circular(30), topEnd: Radius.circular(30)),
              )))
            ],
          ),
        ));
  }

  puskesmas() {
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 80, bottom: 40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: Get.width * 0.25,
                height: Get.width * 0.25,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/logo/puskesmas.png",
                    height: Get.width * 0.23,
                    width: Get.width * 0.23,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  "PUSKESMAS KABAT",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )
            ]));
  }
}
