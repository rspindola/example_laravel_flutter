import 'package:get/get.dart';
import 'package:mobile_app/app/modules/initial/initial_binding.dart';
import 'package:mobile_app/app/modules/initial/initial_view.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => InitialPage(),
      binding: InitialBinding(),
    )
  ];
}
