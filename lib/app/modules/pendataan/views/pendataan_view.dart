import 'package:aplikasipendatabayi/app/modules/pendataan/views/list_bayi_view.dart';
import 'package:aplikasipendatabayi/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasipendatabayi/my_icon_icons.dart';

import 'package:get/get.dart';

import '../controllers/pendataan_controller.dart';

class PendataanView extends GetView<PendataanController> {
  PendataanView({Key? key}) : super(key: key);
  final listPuskesmasC = PendataanController();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        backgroundColor: Colors.white,
        appBar: (listPuskesmasC.searchPuskesmas.value
            ? appBarSearch()
            : appBarNormal()),
        body: Stack(
          fit: StackFit.loose,
          children: [
            Container(
              width: Get.width,
              height: Get.width * 0.2,
              decoration: BoxDecoration(
                  color: green2,
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(15))),
            ),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (contex, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          margin: const EdgeInsets.only(
                              top: 15, left: 20, right: 20),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(color: Colors.grey, blurRadius: 2)
                              ]),
                          child: ListTile(
                            selected: true,
                            onTap: () {
                              Get.to(ListBayiView(),
                                  arguments: "puskesmas andara");
                            },
                            leading: Icon(
                              MyIcon.home,
                              size: 40,
                              color: green1,
                            ),
                            title: Text(
                              'Puskesmas andara',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            subtitle: Text(
                                'Jl. Jendral Sudirman, rt. 20, kel. Madurejo',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[700])),
                          )),
                      (index + 1 == 10
                          ? const SizedBox(height: 15)
                          : const SizedBox())
                    ],
                  );
                })
          ],
        )));
  }

  AppBar appBarNormal() {
    return AppBar(
      backgroundColor: green2,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      title: Text('Back',
          style: GoogleFonts.roboto(
              color: Colors.black, fontWeight: FontWeight.w500)),
      actions: [
        TextButton(
          onPressed: () {
            listPuskesmasC.searchView(listPuskesmasC.searchPuskesmas);
          },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            width: 100,
            height: 35,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text('Search',
                      style: GoogleFonts.roboto(color: Colors.black)),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  AppBar appBarSearch() {
    return AppBar(
      elevation: 0,
      backgroundColor: green2,
      actions: [
        IconButton(
            onPressed: () {
              listPuskesmasC.searchClose(listPuskesmasC.searchPuskesmas);
            },
            icon: const Icon(Icons.close, color: Colors.black))
      ],
      title: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: TextFormField(
          style: GoogleFonts.roboto(fontSize: 18),
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusColor: Colors.blue,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              )),
        ),
      ),
    );
  }
}
