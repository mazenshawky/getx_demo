import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/view/home.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: MaterialButton(
          onPressed: (){
            Get.to(() => Home());
          },
          color: Colors.red,
          child: const Text('Home'),
          textColor: Colors.white,
        ),
      ),
    );
  }
}
