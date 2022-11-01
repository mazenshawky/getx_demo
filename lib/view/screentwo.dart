import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/homecontroller.dart';

class ScreenTwo extends StatelessWidget {
  ScreenTwo({Key? key}) : super(key: key);

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              '${controller.counter}',
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
