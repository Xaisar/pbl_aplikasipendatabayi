import 'package:aplikasipendatabayi/app/modules/login/views/login_view.dart';
import 'package:aplikasipendatabayi/app/views/views/splash_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Puskemas Kabat",
        home: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // return Get.offNamed(Routes.LOGIN);
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 5)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SplashScreenView();
        } else {
          return const LoginView();
        }
      },
    );
  }
}