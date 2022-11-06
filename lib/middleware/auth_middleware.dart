import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_demo/main.dart';

class AuthMiddleWare extends GetMiddleware{

  @override
  RouteSettings? redirect(String? route) {
    if(sharedPref!.getString("id") != null) return const RouteSettings(name: "/home");
    return null;
  }
}