import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/locale/locale.dart';
import 'package:getx_demo/locale/locale_controller.dart';
import 'package:getx_demo/view/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPrefs;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  sharedPrefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyLocaleController controller = Get.put(MyLocaleController());
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      locale: controller.initialLang,
      translations: MyLocale(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const Home()),
      ],
    );
  }
}
