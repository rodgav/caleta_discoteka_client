import 'package:caleta_discoteka_client/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'root_logic.dart';

class RootPage extends GetView<RootLogic> {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(builder: (context, delegate, current) {
      return Scaffold(
        body: GetRouterOutlet(initialRoute: Routes.home),
      );
    });
  }
}
