import 'package:aplikasipendatabayi/app/routes/app_pages.dart';
import 'package:aplikasipendatabayi/app/views/views/development_view.dart';
import 'package:aplikasipendatabayi/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class SideMenuView extends StatelessWidget {
  const SideMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              width: Get.width * 0.65,
              color: green1,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Image.asset(
                          'assets/logo/puskesmas.png',
                          height: 45,
                          width: 45,
                        ),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 15),
                          child: Text('Puskesmas Kabat',
                              style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)))
                    ],
                  ),
                  //Nama
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.centerLeft,
                    child: Text('Nur Lailatul Hidayah',
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ),
                  //Posyandu
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    alignment: Alignment.centerLeft,
                    child: Text('Posyandu Melati',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                  ),
                  //Alamat
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'Jl. Raya Karang Rejo, Kabat, Kec. Kabat, Banyuwangi, Jawa Timur',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  )
                ],
              ),
            ),
            Flexible(
                child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              height: Get.height,
              width: Get.width * 0.65,
              color: Colors.white,
              child: Stack(fit: StackFit.expand, children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Home
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(top: 5),
                      width: Get.width * 0.55,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius:
                              const BorderRadiusDirectional.horizontal(
                                  end: Radius.circular(40))),
                      child: TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.home_filled,
                                  color: green1,
                                  size: 40,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Home",
                                    style: GoogleFonts.roboto(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                    //Profile
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(top: 5),
                      width: Get.width * 0.55,
                      decoration: BoxDecoration(
                          // color: Colors.grey[300],
                          borderRadius:
                              const BorderRadiusDirectional.horizontal(
                                  end: Radius.circular(40))),
                      child: TextButton(
                          onPressed: () {
                            Get.to(const DevelopmentView());
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.person,
                                    color: green1,
                                    size: 40,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Profile",
                                    style: GoogleFonts.roboto(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                    //Laporan
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(top: 5),
                      width: Get.width * 0.55,
                      decoration: BoxDecoration(
                          // color: Colors.grey[300],
                          borderRadius:
                              const BorderRadiusDirectional.horizontal(
                                  end: Radius.circular(40))),
                      child: TextButton(
                          onPressed: () {
                            Get.to(const DevelopmentView());
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Image.asset('assets/icons/laporan.png',
                                    height: 40, width: 40),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Laporan",
                                    style: GoogleFonts.roboto(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                    //Setting
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(top: 5),
                      width: Get.width * 0.55,
                      decoration: BoxDecoration(
                          // color: Colors.grey[300],
                          borderRadius:
                              const BorderRadiusDirectional.horizontal(
                                  end: Radius.circular(40))),
                      child: TextButton(
                          onPressed: () {
                            Get.to(const DevelopmentView());
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Icon(Icons.settings, color: green1, size: 40),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Setting",
                                    style: GoogleFonts.roboto(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                    //garis batas
                    Container(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: Get.width * 0.5,
                        height: 3,
                        color: Colors.grey,
                      ),
                    ),
                    //versi aplikasi
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.only(left: 28),
                      child: Row(
                        children: [
                          Icon(Icons.play_arrow_outlined,
                              color: green1, size: 40),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "Versi - " + "1.0.1",
                              style: GoogleFonts.roboto(
                                  color: Colors.black, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                //logout
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: Get.width * 0.5,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.offAllNamed(Routes.LOGIN);
                        },
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.red),
                        child: Text(
                          'LOG OUT',
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 14),
                        ),
                      ),
                    )
                  ],
                )
              ]),
            ))
          ],
        ),
      ),
    );
  }
}
