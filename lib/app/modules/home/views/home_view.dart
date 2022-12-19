import 'package:aplikasipendatabayi/app/modules/home/views/widgets/sideMenu_view.dart';
import 'package:aplikasipendatabayi/app/routes/app_pages.dart';
import 'package:aplikasipendatabayi/app/views/views/development_view.dart';
import 'package:aplikasipendatabayi/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: green2,
          leading: IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SideMenuView();
                  });
            },
            icon: const Icon(
              Icons.menu,
              size: 40,
              color: Colors.white,
            ),
          ),
          title: Container(
            alignment: Alignment.topRight,
            child: Text(
              "PUSKESMAS KABAT",
              textAlign: TextAlign.right,
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 10),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Image.asset(
                  "assets/logo/puskesmas.png",
                  height: 43,
                  width: 43,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            //Card Identitas
            Stack(
              fit: StackFit.loose,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  height: 150,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: green2,
                      borderRadius: const BorderRadiusDirectional.only(
                          bottomStart: Radius.circular(50))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.only(bottom: 15),
                        child: Text(
                          "Hi! Melati Rindu Kasih Nugraha Jailana",
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Posyandu Melati',
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 110),
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.only(left: 30),
                    height: 80,
                    width: Get.width * 0.75,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: green3,
                        borderRadius: const BorderRadiusDirectional.only(
                            topStart: Radius.circular(37),
                            bottomStart: Radius.circular(37))),
                    child: Text('Jadwal : 3 Desember 2022',
                        style: GoogleFonts.roboto(
                            color: Colors.white, fontSize: 20)),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Data Bayi
                  TextButton(
                      onPressed: () {
                        Get.to(const DevelopmentView());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/icons/baby.png',
                            width: 70,
                            height: 70,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Data Bayi",
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )),
                  //Form Pendataan
                  TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.PENDATAAN);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/icons/report.png',
                            width: 70,
                            height: 70,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Form Pendataan",
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )),
                  //Grafik
                  TextButton(
                      onPressed: () {
                        Get.to(const DevelopmentView());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/icons/chart.png',
                            width: 70,
                            height: 70,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Grafik",
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Flexible(
              child: Stack(fit: StackFit.loose, children: [
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  height: Get.height,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: const Border(
                          top: BorderSide(color: Colors.black, width: 2))),
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          margin: EdgeInsets.only(
                              top: (index == 0 ? 25 : 15),
                              left: 20,
                              right: 20,
                              bottom: (index + 1 == 10 ? 15 : 0)),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: ListTile(
                            leading: Image.asset('assets/images/book.png'),
                            title: Text("Nur Lailatul Hidayah",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            subtitle: Text(
                                "Posyandu Melati" + "\n" + "3 Desember 2022",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.roboto(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                            trailing: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Detail",
                                  style:
                                      GoogleFonts.roboto(color: Colors.black),
                                ),
                                Icon(
                                  Icons.arrow_right,
                                  color: green1,
                                )
                              ],
                            ),
                            selected: true,
                            onTap: () {
                              Get.toNamed(Routes.RIWAYAT);
                            },
                          ),
                        );
                      }),
                ),
                //Title Riwayat
                Container(
                  alignment: Alignment.topCenter,
                  child: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 80,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Text(
                      "Riwayat",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          backgroundColor: Colors.white,
                          fontSize: 18),
                    ),
                  ),
                )
              ]),
            )
          ],
        ));
  }
}
