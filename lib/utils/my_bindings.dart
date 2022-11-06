import 'package:get/get.dart';
import 'package:getx_demo/controller/homecontroller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    // Get.put(HomeController(), permanent: true);
    Get.put(HomeController());
    // Get.lazyPut(() => HomeController());
    // Get.lazyPut(() => HomeController(), fenix: true);
  }

}