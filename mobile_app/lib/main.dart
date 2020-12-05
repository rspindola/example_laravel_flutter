import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mobile_app/app/modules/initial/initial_view.dart';
import 'package:mobile_app/app/routes/app_pages.dart';
import 'package:mobile_app/app/theme/app_theme.dart';

void main() async {
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      title: "BarberApp",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: appThemeData,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
      home: InitialPage(),
    ),
  );
}
