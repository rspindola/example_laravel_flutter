import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mobile_app/app/routes/app_pages.dart';

class InitialController extends GetxController {
  final box = GetStorage('barberapp');
  String redirectPage;
  var auth;

  String verifyAuth() {
    auth = box.read('auth');

    if (auth != null) {
      return Routes.HOME;
    } else {
      return Routes.WELCOME;
    }
  }
}
