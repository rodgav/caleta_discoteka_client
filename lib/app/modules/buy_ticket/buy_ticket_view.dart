import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'buy_ticket_logic.dart';

class BuyTicketPage extends GetView<BuyTicketLogic> {
  const BuyTicketPage({Key? key}) : super(key: key);

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
              child: Center(
                child: Text(
                  'Comprar entrada',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
              child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
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
                height: web ? size.height * 0.4 : size.height * 0.3,
              ),
              onTap: () => null,
            ),
          )),
          SliverToBoxAdapter(
              child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                text: 'Alta Gracia\n',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'Viernes 26 de Noviembre del 2021',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ]),
          )),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
        ],
      ),
    ));
  }
}
