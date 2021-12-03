import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'profile_logic.dart';

class ProfilePage extends GetView<ProfileLogic> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final web = size.width > 800;
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
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Mis datos',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Nombres: ',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'Rodolfo Samuel',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Apellidos: ',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'Gavilan Muñoz',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Mis entradas',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
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
                                  top: 5,
                                  left: 5,
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                        child: Tooltip(
                                      message: '1 entrada',
                                      child: Container(
                                        width: web ? 30 : 24,
                                        height: web ? 30 : 24,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle),
                                        child: Center(
                                          child: Text(
                                            '1',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .copyWith(
                                                    fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    )),
                                  )),
                              Positioned(
                                  top: 5,
                                  right: 5,
                                  child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: GestureDetector(
                                          child: Tooltip(
                                              message: 'QR de tu entrada',
                                              child: Container(
                                                width: web ? 35 : 24,
                                                height: web ? 35 : 24,
                                                decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/qr.png'),
                                                        fit: BoxFit.cover)),
                                              ))))),
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
                      ),
                    );
                  },
                  childCount: 20,
                ),
              )),
        ],
      ),
    ));
  }
}
