import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/homecontroller.dart';

class ScreenOne extends StatelessWidget {
  ScreenOne({Key? key}) : super(key: key);

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: (){
                    controller.increment();
                  },
                  icon: const Icon(Icons.add, size: 30),
                ),
                Center(
                  child: GetBuilder<HomeController>(
                    builder: (controller) => Text(
                      "${controller.counter}",
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: (){
                    controller.decrement();
                  },
                  icon: const Icon(Icons.remove, size: 30),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}