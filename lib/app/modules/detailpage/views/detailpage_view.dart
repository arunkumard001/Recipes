import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detailpage_controller.dart';

class DetailpageView extends GetView<DetailpageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailpageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DetailpageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
