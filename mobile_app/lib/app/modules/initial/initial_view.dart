import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/app/modules/initial/initial_controller.dart';
import 'package:splashscreen/splashscreen.dart';

class InitialPage extends GetView<InitialController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<InitialController>(
      init: InitialController(),
      builder: (_) {
        return SplashScreen(
          seconds: 2,
          navigateAfterSeconds: controller.verifyAuth(),
          title: Text(
            'Welcome In SplashScreen',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          image: Image.network(
            'https://flutter.io/images/catalog-widget-placeholder.png',
          ),
          backgroundColor: Colors.white,
          loaderColor: Colors.red,
        );
      },
    );
  }
}
