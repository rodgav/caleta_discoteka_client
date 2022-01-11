import 'package:caleta_discoteka_client/app/routes/app_pages.dart';
import 'package:get/get.dart';

class PartiesLogic extends GetxController {
  String state;

  PartiesLogic({required this.state});

  void toBuyTicket(String idParty) {
    Get.rootDelegate.toNamed(Routes.buyTicket(idParty));
  }
}
