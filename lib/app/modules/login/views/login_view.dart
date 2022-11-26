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
                      topStart: Radius.circular(30),
                      topEnd: Radius.circular(30)),
                ),
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      // controller: txtUsername,
                      decoration: InputDecoration(
                          label: Text("Username"),
                          border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(15)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87)),
                          prefixIcon: Icon(
                            Icons.person,
                            size: 20,
                          ),
                          hintText: "Masukan Username",
                          hintStyle: TextStyle(color: Colors.black87),
                          labelStyle: TextStyle(color: Colors.black87)),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      // controller: txtPassword,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(15)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87)),
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 20,
                          ),
                          hintText: "Masukan Password",
                          hintStyle: TextStyle(color: Colors.black87),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.black87)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text("Lupa Password"),
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    Card(
                      color: Color(0xFF1CAE81),
                      elevation: 8,
                      child: Container(
                        height: 55,
                        child: InkWell(
                          splashColor: Colors.white,
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const HomeRoute()),
                            // );
                          },
                          child: Center(
                            child: Text(
                              "Masuk",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ))
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
