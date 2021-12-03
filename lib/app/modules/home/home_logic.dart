import 'package:caleta_discoteka_client/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeLogic extends GetxController {
  void toProfile() {
    Get.rootDelegate.toNamed(Routes.profile);
  }

  void toBack() {
    Get.rootDelegate.popRoute();
  }
}
