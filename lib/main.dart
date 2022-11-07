import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/services/settings_services.dart';
import 'package:getx_demo/view/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

Future initialServices() async {
  await Get.putAsync(() => SettingsServices().init());
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
      home: const Home(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const Home()),
      ],
    );
  }
}
