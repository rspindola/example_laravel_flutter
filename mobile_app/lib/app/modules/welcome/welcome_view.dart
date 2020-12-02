import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mobile_app/app/modules/login/login_view.dart';
import 'package:mobile_app/app/modules/welcome/local_widgets/background.dart';
import 'package:mobile_app/app/modules/welcome/welcome_controller.dart';
import 'package:mobile_app/app/routes/app_pages.dart';
import 'package:mobile_app/app/utils/contants.dart';
import 'package:mobile_app/app/widgets/rounded_button.dart';

class WelcomePage extends GetView<WelcomeController> {
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
                "WELCOME TO EDU",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset(
                "assets/icons/chat.svg",
                height: size.height * 0.45,
              ),
              SizedBox(height: size.height * 0.05),
              RoundedButton(
                text: "LOGIN",
                press: () {
                  Get.offAndToNamed(Routes.LOGIN);
                },
              ),
              RoundedButton(
                text: "SIGN UP",
                color: kPrimaryLightColor,
                textColor: Colors.black,
                press: () {
                  Get.offAndToNamed(Routes.CADASTRO);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
