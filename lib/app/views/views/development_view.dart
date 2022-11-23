import 'package:flutter/material.dart';

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
      body: Center(
        child: Text(
          'DevelopmentView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
