import 'package:caleta_discoteka_client/app/routes/app_pages.dart';
import 'package:get/get.dart';

class DiscotecaLogic extends GetxController {
  void toBuyTicket(String idParty) {
    Get.rootDelegate.toNamed(Routes.buyTicket(idParty));
  }

  void toParties(String state) {
    Get.rootDelegate.toNamed(Routes.parties(state));
  }
}
