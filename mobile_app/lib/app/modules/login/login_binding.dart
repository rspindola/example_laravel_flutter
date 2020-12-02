import 'package:get/get.dart';
import 'package:mobile_app/app/modules/login/login_controller.dart';

import '../../data/provider/auth_provider.dart';
import '../../data/repository/auth_repository.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<AuthRepository>(() => AuthRepository());
    Get.lazyPut<AuthApiClient>(() => AuthApiClient());
  }
}
