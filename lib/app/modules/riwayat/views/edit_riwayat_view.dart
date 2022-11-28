import 'package:flutter/material.dart';

import 'package:get/get.dart';

class EditRiwayatView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EditRiwayatView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'EditRiwayatView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
