import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/main.dart';

import 'home.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
              onPressed: (){
                sharedPref!.setString("id", "1");
                Get.offNamed("home");
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}
