import 'package:aplikasipendatabayi/app/modules/login/views/login_view.dart';
import 'package:aplikasipendatabayi/app/routes/app_pages.dart';
import 'package:aplikasipendatabayi/app/views/views/splash_screen_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/index_controller.dart';

class IndexView extends GetView<IndexController> {
  const IndexView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 4)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreenView();
          } else {
            return LoginView();
          }
        });
  }
}
