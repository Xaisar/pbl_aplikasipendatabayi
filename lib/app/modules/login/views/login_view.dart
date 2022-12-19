import 'package:aplikasipendatabayi/app/views/views/development_view.dart';
import 'package:aplikasipendatabayi/theme.dart';
import 'package:aplikasipendatabayi/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);
  final loginC = LoginController();
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
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(30),
                            topEnd: Radius.circular(30)),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.1,
                          vertical: Get.width * 0.08),
                      alignment: Alignment.topCenter,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.topCenter,
                                margin:
                                    EdgeInsets.only(bottom: Get.width * 0.08),
                                child: Text('Login',
                                    style: GoogleFonts.roboto(
                                        color: Colors.black, fontSize: 32)),
                              ),
                              //USERNAME
                              Container(
                                margin: const EdgeInsets.only(bottom: 40),
                                child: TextFormField(
                                  onChanged: (value) {
                                    loginC.user.username = value;
                                  },
                                  decoration: InputDecoration(
                                      label: Text(
                                        "Username",
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.blue),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      prefixIcon: const Icon(
                                        Icons.person,
                                        size: 20,
                                      ),
                                      hintText: "Masukan Username",
                                      hintStyle: GoogleFonts.roboto(
                                          color: Colors.black),
                                      labelStyle: GoogleFonts.roboto(
                                          color: Colors.black)),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                              ),
                              //PASSWORD
                              Container(
                                margin: const EdgeInsets.only(bottom: 2),
                                child: Obx(() => TextFormField(
                                      onChanged: (value) {
                                        loginC.user.password = value;
                                      },
                                      obscureText: loginC.verify.value,
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      decoration: InputDecoration(
                                          label: Text(
                                            "Password",
                                            style: GoogleFonts.roboto(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.blue),
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          prefixIcon: const Icon(
                                            Icons.key,
                                            size: 20,
                                          ),
                                          suffixIcon: GestureDetector(
                                            onTap: () {
                                              loginC.passwordVisibility();
                                            },
                                            child: Icon(
                                              loginC.verify.value
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              color: loginC.verify.value
                                                  ? Colors.grey
                                                  : Colors.blue,
                                            ),
                                          ),
                                          hintText: "Masukan Password",
                                          hintStyle: GoogleFonts.roboto(
                                              color: Colors.black),
                                          labelStyle: GoogleFonts.roboto(
                                              color: Colors.black)),
                                    )),
                              ),
                              //lUPA PASSWORD
                              Container(
                                alignment: Alignment.topRight,
                                child: TextButton(
                                    onPressed: () {
                                      Get.to(const DevelopmentView());
                                    },
                                    child: Text(
                                      'Lupa Password?',
                                      style: GoogleFonts.roboto(
                                          fontSize: 15, color: Colors.black),
                                    )),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(bottom: Get.width * 0.1),
                                child: SizedBox(
                                  height: 50,
                                  width: Get.width * 0.7,
                                  child: ElevatedButton(
                                      style: TextButton.styleFrom(
                                          backgroundColor: green1,
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15)))),
                                      onPressed: () {
                                        loginC.login(context);
                                      },
                                      child: Text('Masuk',
                                          style: GoogleFonts.roboto(
                                              color: Colors.white,
                                              fontSize: 18))),
                                ),
                              )
                            ],
                          )
                        ],
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
                width: Get.width * 0.26,
                height: Get.width * 0.26,
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
                child: Text("PUSKESMAS KABAT",
                    style: GoogleFonts.acme(fontSize: 30, color: Colors.white)),
              )
            ]));
  }
}
