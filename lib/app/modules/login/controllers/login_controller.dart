import 'package:aplikasipendatabayi/app/data/models/user_model.dart';
import 'package:aplikasipendatabayi/app/data/providers/user_provider.dart';
import 'package:aplikasipendatabayi/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginController extends GetxController {
  var user = User();
  var verify = true.obs;
  var auth;
  var error;
  void passwordVisibility() {
    verify.value = !verify.value;
  }

  void login(context) {
    if (user.username != null && user.password != null) {
      UserProvider()
          .postUser(user.username!, user.password!)
          .then((response) => {
                // error = response["error"],
                if (auth == true)
                  {
                    user.idPengguna = response["id_pengguna"],
                    Get.offAllNamed(Routes.HOME, arguments: user.idPengguna)
                  }
                else
                  {error = response["error"], errorWrongDialog(context, error)},
              });
      Get.offAllNamed(Routes.HOME, arguments: user.idPengguna);
    } else {
      errorNullDialog(context);
    }
  }

  Future<dynamic> errorNullDialog(context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            icon: const Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 70,
            ),
            title: Text(
              "Error",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            content: Text(
              "Maaf Data Tidak Boleh Kosong",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(color: Colors.black, fontSize: 14),
            ),
          );
        });
  }

  Future<dynamic> errorWrongDialog(context, String responseError) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            icon: const Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 70,
            ),
            title: Text(
              "Error",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            content: Text(
              responseError,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(color: Colors.black, fontSize: 14),
            ),
          );
        });
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
