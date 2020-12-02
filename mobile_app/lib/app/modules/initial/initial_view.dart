import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/app/modules/initial/initial_controller.dart';
import 'package:splashscreen/splashscreen.dart';
import '../../routes/app_pages.dart';

class InitialPage extends GetView<InitialController> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: Routes.WELCOME,
      title: new Text(
        'Welcome In SplashScreen',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: new Image.network(
          'https://flutter.io/images/catalog-widget-placeholder.png'),
      backgroundColor: Colors.white,
      loaderColor: Colors.red,
    );
  }
}
