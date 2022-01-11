import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'parties_logic.dart';

class PartiesPage extends GetView<PartiesLogic> {
  const PartiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //final web = size.width > 800;
    return Scaffold(
        body: Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.black,
          Colors.deepPurple.shade900,
          Colors.deepPurple.shade800,
          Colors.deepPurple.shade700,
          Colors.deepPurple.shade700,
          Colors.deepPurple.shade800,
          Colors.deepPurple.shade900,
          Colors.black,
        ],
      )),
      child: CustomScrollView(slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 2),
            child: Text(
              controller.state == 'upcoming'
                  ? 'Proximas fiestas'
                  : 'Anteriores fiestas',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 400.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 2.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: const AssetImage('assets/images/bg.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.7),
                                    BlendMode.luminosity))),
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            Positioned(
                              right: 5,
                              left: 5,
                              bottom: 5,
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: 'Alta Gracia\n',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: 'Viernes 26 de Noviembre del 2021',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                  ),
                                ]),
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: () => controller.state == 'upcoming'
                          ? controller.toBuyTicket('1234')
                          : null,
                    ),
                  );
                },
                childCount: 20,
              ),
            )),
      ]),
    ));
  }
}
