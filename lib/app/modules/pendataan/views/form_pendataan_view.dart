import 'package:flutter/material.dart';

import 'package:get/get.dart';

class FormPendataanView extends GetView {
  const FormPendataanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FormPendataanView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FormPendataanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
