import 'package:get/get.dart';

import 'buy_ticket_logic.dart';

class BuyTicketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BuyTicketLogic(idParty: Get.parameters['idParty'] ?? ''));
  }
}
