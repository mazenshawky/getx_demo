import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/utils/my_bindings.dart';
import 'package:getx_demo/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: MyBindings(),
      initialRoute: "/",
      getPages: [
        // GetPage(name: "/", page: () => HomePage(), binding: MyBindings()),
        GetPage(name: "/", page: () => HomePage()),
      ],
    );
  }
}
