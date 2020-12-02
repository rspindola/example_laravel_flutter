import 'package:get/get.dart';
import 'package:mobile_app/app/modules/signup/signup_controller.dart';

class SignupBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(() => SignupController());
  }
}
