import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/middleware/auth_middleware.dart';
import 'package:getx_demo/view/home.dart';
import 'package:getx_demo/view/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
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
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const Login(), middlewares: [AuthMiddleWare()]),
        GetPage(name: "/home", page: () => const Home()),
      ],
    );
  }
}
