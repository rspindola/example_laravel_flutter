import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mobile_app/app/data/model/auth_model.dart';
import 'package:mobile_app/app/routes/app_pages.dart';

class InitialController extends GetxController {
  final box = GetStorage();

  String verifyAuth() {
    Auth auth = Auth.fromJson(box.read('auth'));
    if (!auth.isNull) {
      return Routes.HOME;
    } else {
      return Routes.WELCOME;
    }
  }
}
