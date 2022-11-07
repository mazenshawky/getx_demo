import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../locale/locale_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyLocaleController controllerLang = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("1".tr),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                onPressed: (){
                  controllerLang.changeLang("ar");
                },
                color: Colors.red,
                textColor: Colors.white,
                child: Text('2'.tr),
              ),
            ),
            Center(
              child: MaterialButton(
                onPressed: (){
                  controllerLang.changeLang("en");
                },
                color: Colors.red,
                textColor: Colors.white,
                child: Text('3'.tr),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
