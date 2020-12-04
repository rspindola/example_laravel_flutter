import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/app/data/model/user_model.dart';
import 'package:mobile_app/app/data/repository/auth_repository.dart';

class LoginController extends GetxController {
  final repository = Get.find<AuthRepository>();

  User user = User();
  RxBool showPassword = false.obs;
  RxBool isLoading = false.obs;

  final loginFormKey = GlobalKey<FormState>();
  final signupFormKey = GlobalKey<FormState>();

  Future<void> login() async {
    if (loginFormKey.currentState.validate()) {
      //isLoading.value = true;

      loginFormKey.currentState.save();
      try {
        print(user.email);
        print(user.password);
        await repository.authApiClient.login(user.email, user.password);
      } catch (e) {
        Get.snackbar(
          "Erro ao realizar login", // title
          e.toString(), // message
          icon: const Icon(Icons.error_outline),
          shouldIconPulse: true,
          backgroundColor: Colors.red,
          colorText: Colors.white,
          barBlur: 20,
          isDismissible: true,
          duration: const Duration(seconds: 5),
        );
      }
    }
  }

  void submit() async {
    repository.authApiClient.login('rspindola@live.com', 'Renato2234');
  }
}
