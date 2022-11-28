import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ListBayiView extends GetView {
  const ListBayiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListBayiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ListBayiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
