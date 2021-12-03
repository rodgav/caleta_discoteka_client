import 'package:caleta_discoteka_client/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_logic.dart';

class HomePage extends GetView<HomeLogic> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(builder: (context, delegate, current) {
      final currentLocation = current?.location;
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade800,
          leading: currentLocation != null &&
                  currentLocation != '/' &&
                  currentLocation != '/home' &&
                  currentLocation != '/home/discoteca'
              ? IconButton(
                  onPressed: controller.toBack,
                  icon: const Icon(Icons.arrow_back_ios_outlined))
              : null,
          title: const Text('Caleta discoteca'),
          centerTitle: true,
          actions: [
            currentLocation != null && currentLocation != '/home/profile'
                ? IconButton(
                    onPressed: controller.toProfile,
                    icon: const Icon(Icons.person))
                : const SizedBox()
          ],
        ),
        body: GetRouterOutlet(
          initialRoute: Routes.discoteca,
          key: Get.nestedKey(Routes.home),
        ),
      );
    });
  }
}
