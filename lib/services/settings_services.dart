import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsServices extends GetxService {
  late SharedPreferences sharedPrefs;

  RxInt counter = 0.obs;

  Future<SettingsServices> init() async {
    // start services
    sharedPrefs = await SharedPreferences.getInstance();
    counter.value = sharedPrefs.getInt("counter") ?? 0;
    // end
    return this;
  }

  increase(){
    counter.value++;
    sharedPrefs.setInt("counter", counter.value);
  }
}
