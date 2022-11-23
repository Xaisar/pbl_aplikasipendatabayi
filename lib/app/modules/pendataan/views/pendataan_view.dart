import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pendataan_controller.dart';

class PendataanView extends GetView<PendataanController> {
  const PendataanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PendataanView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PendataanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
