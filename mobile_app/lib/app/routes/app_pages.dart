import 'package:get/get.dart';
import 'package:mobile_app/app/modules/initial/initial_binding.dart';
import 'package:mobile_app/app/modules/initial/initial_view.dart';
import 'package:mobile_app/app/modules/login/login_binding.dart';
import 'package:mobile_app/app/modules/login/login_view.dart';
import 'package:mobile_app/app/modules/signup/signup_binding.dart';
import 'package:mobile_app/app/modules/signup/signup_view.dart';
import 'package:mobile_app/app/modules/welcome/welcome_binding.dart';
import 'package:mobile_app/app/modules/welcome/welcome_view.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => InitialPage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: Routes.WELCOME,
      page: () => WelcomePage(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.CADASTRO,
      page: () => SignupPage(),
      binding: SignupBinding(),
    ),
  ];
}
