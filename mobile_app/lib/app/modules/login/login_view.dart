import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mobile_app/app/modules/login/local_widgets/background.dart';
import 'package:mobile_app/app/modules/login/login_controller.dart';
import 'package:mobile_app/app/routes/app_pages.dart';
import 'package:mobile_app/app/widgets/already_have_an_account_acheck.dart';
import 'package:mobile_app/app/widgets/rounded_button.dart';
import 'package:mobile_app/app/widgets/rounded_input_field.dart';
import 'package:mobile_app/app/widgets/rounded_password_field.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    Size size = Get.size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: "Digite o E-mail",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "ENTRAR",
                press: () {},
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () => Get.offAndToNamed(Routes.CADASTRO),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
