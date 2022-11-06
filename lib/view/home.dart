import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_demo/utils/my_bindings.dart';
import 'package:getx_demo/view/screenone.dart';
import 'package:getx_demo/view/screentwo.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
              onPressed: (){
                Get.to(() => ScreenOne(), binding: MyBindings());
                // Get.to(() => ScreenOne());
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('screen one'),
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: (){
                Get.to(() => ScreenTwo());
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('screen two'),
            ),
          ),
        ],
      ),
    );
  }
}
