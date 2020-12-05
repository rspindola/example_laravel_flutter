import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mobile_app/app/routes/app_pages.dart';

class HomeController extends GetxController {
  final box = GetStorage('barberapp');

  void clear() {
    box.erase();
    Get.offAllNamed(Routes.WELCOME);
  }
}
