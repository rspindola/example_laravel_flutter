import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mobile_app/app/data/model/user_model.dart';
import 'package:mobile_app/app/data/repository/auth_repository.dart';
import 'package:mobile_app/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final repository = Get.find<AuthRepository>();
  final box = GetStorage();

  User user = User();
  RxBool showPassword = false.obs;
  RxBool isLoading = false.obs;

  final loginFormKey = GlobalKey<FormState>();
  final signupFormKey = GlobalKey<FormState>();

  Future<void> login() async {
    if (loginFormKey.currentState.validate()) {
      isLoading.value = true;
      loginFormKey.currentState.save();
      try {
        await repository.authApiClient.login(user.email, user.password).then(
          (value) {
            if (!value.isNull) {
              box.write('auth', value);
              Get.offAllNamed(Routes.HOME);
            }
          },
        );
        isLoading.value = false;
      } catch (e) {
        isLoading.value = false;
        print(e);
      }
    }
  }

  void submit() async {
    repository.authApiClient.login('rspindola@live.com', 'Renato2234');
  }
}
