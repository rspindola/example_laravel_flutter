import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mobile_app/app/modules/signup/local_widgets/background.dart';
import 'package:mobile_app/app/modules/signup/local_widgets/or_divider.dart';
import 'package:mobile_app/app/modules/signup/local_widgets/social_icon.dart';
import 'package:mobile_app/app/modules/signup/signup_controller.dart';
import 'package:mobile_app/app/routes/app_pages.dart';
import 'package:mobile_app/app/widgets/already_have_an_account_acheck.dart';
import 'package:mobile_app/app/widgets/rounded_button.dart';
import 'package:mobile_app/app/widgets/rounded_input_field.dart';
import 'package:mobile_app/app/widgets/rounded_password_field.dart';

class SignupPage extends GetView<SignupController> {
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
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/signup.svg",
                height: size.height * 0.35,
              ),
              RoundedInputField(
                hintText: "Digite seu e-mail",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "CADASTRAR",
                press: () {},
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Get.offAndToNamed(Routes.LOGIN);
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocalIcon(
                    iconSrc: "assets/icons/facebook.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/google-plus.svg",
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
