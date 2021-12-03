import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'discoteca_logic.dart';

class DiscotecaPage extends GetView<DiscotecaLogic> {
  const DiscotecaPage({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.only(left: 20, right: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Proximas fiestas',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () => controller.toParties('upcoming'),
                      child: Text(
                        'ver más',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                  height: size.height * 0.25,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) => MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 20, right: index == 10 - 1 ? 20 : 0),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image:
                                      const AssetImage('assets/images/bg.jpg'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.7),
                                      BlendMode.luminosity))),
                          width: web ? size.width * 0.4 : size.width * 0.8,
                          height: size.height * 0.25,
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
                        onTap: () => controller.toBuyTicket('1234'),
                      ),
                    ),
                    itemCount: 10,
                  )),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Anteriores fiestas',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () => controller.toParties('past'),
                      child: Text(
                        'ver más',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                  height: size.height * 0.25,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) => Container(
                      margin: EdgeInsets.only(
                          left: 20, right: index == 10 - 1 ? 20 : 0),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: const AssetImage('assets/images/bg.jpg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.7),
                                  BlendMode.luminosity))),
                      width: web ? size.width * 0.4 : size.width * 0.8,
                      height: size.height * 0.25,
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
                    itemCount: 10,
                  )),
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
                  'Encuentranos',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
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
                  width: size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.spaceBetween,
                    runAlignment: WrapAlignment.center,
                    runSpacing: 10,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(15)),
                        width: web ? size.width * 0.47 : size.width * 0.94,
                        height: size.height * 0.5,
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ubicación',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                                child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Image.asset('assets/images/mapa.png',
                                  width: web
                                      ? size.width * 0.47
                                      : size.width * 0.94,
                                  fit: BoxFit.cover),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(15)),
                        width: web ? size.width * 0.47 : size.width * 0.94,
                        height: size.height * 0.5,
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Redes Sociales',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/icons/facebook.png',
                                          width: web ? 90 : 70,
                                          height: web ? 90 : 70,
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          'Facebook',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/icons/instagram.png',
                                          width: web ? 90 : 70,
                                          height: web ? 90 : 70,
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          'Instagram',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/icons/tik-tok.png',
                                          width: web ? 90 : 70,
                                          height: web ? 90 : 70,
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          'TikTok',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/icons/whatsapp.png',
                                          width: web ? 90 : 70,
                                          height: web ? 90 : 70,
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          'WhatsApp',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
