import 'package:get/get.dart';

import 'discoteca_logic.dart';

class DiscotecaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DiscotecaLogic());
  }
}
