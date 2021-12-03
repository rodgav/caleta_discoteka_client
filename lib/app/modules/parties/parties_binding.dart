import 'package:get/get.dart';

import 'parties_logic.dart';

class PartiesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PartiesLogic(state: Get.parameters['state'] ?? ''));
  }
}
