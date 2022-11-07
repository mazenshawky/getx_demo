import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/main.dart';

class MyLocaleController extends GetxController {
  // if installing app for the first time
  // make default language english
  // if you want default to be arabic replace the statements
  // Locale initialLang = sharedPrefs!.getString("lang") == "ar"
  //     ? Locale("ar") :
  //     Locale("en");

  // if installing app for the first time
  // make default language the device language
  Locale initialLang = sharedPrefs!.getString("lang") == null
      ? Get.deviceLocale! :
      Locale(sharedPrefs!.getString("lang")!);

  void changeLang(String codeLang){
    Locale locale = Locale(codeLang);
    sharedPrefs!.setString("lang", codeLang);
    Get.updateLocale(locale);
  }
}