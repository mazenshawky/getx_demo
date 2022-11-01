import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/homecontroller.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController());

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
