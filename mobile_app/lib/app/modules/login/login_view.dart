import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mobile_app/app/modules/login/local_widgets/background.dart';
import 'package:mobile_app/app/modules/login/login_controller.dart';
import 'package:mobile_app/app/routes/app_pages.dart';
import 'package:mobile_app/app/utils/contants.dart';
import 'package:mobile_app/app/widgets/already_have_an_account_acheck.dart';
import 'package:mobile_app/app/widgets/rounded_input_field.dart';
import 'package:mobile_app/app/widgets/rounded_password_field.dart';

/**
 * *TODO: Validar os campos
 */

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Form(
            key: controller.loginFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "LOGIN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: Get.height * 0.03),
                SvgPicture.asset(
                  "assets/icons/login.svg",
                  height: Get.height * 0.35,
                ),
                SizedBox(height: Get.height * 0.03),
                RoundedInputField(
                  hintText: "Digite o E-mail",
                  onChanged: (email) => controller.user.email = email,
                ),
                Obx(
                  () => RoundedPasswordField(
                    onPressed: () {
                      controller.showPassword.value =
                          !controller.showPassword.value;
                    },
                    showPassword: controller.showPassword.value,
                    onChanged: (password) =>
                        controller.user.password = password,
                  ),
                ),
                Obx(
                  () => Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: Get.width * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(29),
                      child: FlatButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        color: kPrimaryColor,
                        onPressed: controller.login,
                        child: !controller.isLoading.value
                            ? Text(
                                controller.isLoading.value
                                    ? "Carregando"
                                    : "Entrar",
                                style: TextStyle(color: Colors.white),
                              )
                            : SizedBox(
                                height: 15,
                                width: 15,
                                child: CircularProgressIndicator(),
                              ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.03),
                AlreadyHaveAnAccountCheck(
                  press: () => Get.offAndToNamed(Routes.CADASTRO),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
