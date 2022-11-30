import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/riwayat_controller.dart';

class RiwayatView extends GetView<RiwayatController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(207, 199, 206, 209),
        leading: Image.asset("assets/icons/panahback.png"),
        title:
            Text('Detail Riwayat Bayi', style: TextStyle(color: Colors.black)),
        actions: [
          SizedBox(
            width: 100,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                print('ini done');
              },
              child: new Text('Edit'),
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF1CAE81),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          // SizedBox(
          //   child: Container(
          //     width: 100,
          //     height: 26,
          //     child: TextButton(
          //       style: TextButton.styleFrom(
          //           backgroundColor: Color(0xFF1CAE81),
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(20),
          //           )),
          //       onPressed: () {},
          //       child: Text(
          //         "Edit",
          //         style: TextStyle(
          //           color: Color(0xffffffff),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: 50,
            child: const Text("NIK Bayi", style: TextStyle(fontSize: 15)),
          )
        ],
      ),
    );
  }
}
