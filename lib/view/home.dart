import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_demo/services/settings_services.dart';

class Home extends GetView<SettingsServices> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<SettingsServices>(
              builder: (c) => Center(
                child: Text(
                  "${c.counter}",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            Center(
              child: MaterialButton(
                onPressed: (){
                  controller.increase();
                },
                color: Colors.red,
                textColor: Colors.white,
                child: const Text('Counter increase'),
              ),
            ),
            Center(
              child: MaterialButton(
                onPressed: (){
                  controller.sharedPrefs.clear();
                },
                color: Colors.red,
                textColor: Colors.white,
                child: const Text('Clear shared prefs'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
