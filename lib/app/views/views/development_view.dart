import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:get/get.dart';

class DevelopmentView extends GetView {
  const DevelopmentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DevelopmentView'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                child: Text(
                    'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890',
                    style: GoogleFonts.roboto())),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              child: Text(
                  'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890',
                  style: GoogleFonts.acme()),
            ),
          ],
        ));
  }
}
