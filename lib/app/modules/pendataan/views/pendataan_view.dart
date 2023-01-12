import 'package:aplikasipendatabayi/app/routes/app_pages.dart';
import 'package:aplikasipendatabayi/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasipendatabayi/my_icon_icons.dart';

import 'package:get/get.dart';

import '../controllers/pendataan_controller.dart';

class PendataanView extends GetView<PendataanController> {
  PendataanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => (controller.view.value == false
        ? const Center(child: CircularProgressIndicator())
        : Scaffold(
            backgroundColor: Colors.white,
            appBar: (controller.searchPuskesmas.value
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
                      borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(15))),
                ),
                (controller.nullSafety.value == false
                    ? Center(
                        child: Text("Tidak Ada Data",
                            style: GoogleFonts.roboto(
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)))
                    : ListView.builder(
                        itemCount: controller.posyandu.length,
                        itemBuilder: (contex, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  margin: const EdgeInsets.only(
                                      top: 15, left: 20, right: 20),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey, blurRadius: 2)
                                      ]),
                                  child: ListTile(
                                    selected: true,
                                    onTap: () {
                                      Get.toNamed(Routes.LIST_BAYI,
                                          arguments: controller
                                              .posyandu[index].id!
                                              .toString());
                                    },
                                    leading: Icon(
                                      MyIcon.home,
                                      size: 40,
                                      color: green1,
                                    ),
                                    title: Text(
                                      controller.posyandu[index].nama!,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    subtitle: Text(
                                        controller.posyandu[index].alamat!,
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
                        }))
              ],
            ))));
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
        onPressed: () {
          Get.back();
        },
      ),
      title: Text('Back',
          style: GoogleFonts.roboto(
              color: Colors.black, fontWeight: FontWeight.w500)),
      actions: [
        TextButton(
          onPressed: () {
            controller.searchView(controller.searchPuskesmas);
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
              controller.searchClose(controller.searchPuskesmas);
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
