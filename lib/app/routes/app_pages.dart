import 'package:caleta_discoteka_client/app/modules/buy_ticket/buy_ticket_binding.dart';
import 'package:caleta_discoteka_client/app/modules/buy_ticket/buy_ticket_view.dart';
import 'package:caleta_discoteka_client/app/modules/discoteca/discoteca_binding.dart';
import 'package:caleta_discoteka_client/app/modules/discoteca/discoteca_view.dart';
import 'package:caleta_discoteka_client/app/modules/home/home_binding.dart';
import 'package:caleta_discoteka_client/app/modules/home/home_view.dart';
import 'package:caleta_discoteka_client/app/modules/login/login_binding.dart';
import 'package:caleta_discoteka_client/app/modules/login/login_view.dart';
import 'package:caleta_discoteka_client/app/modules/parties/parties_binding.dart';
import 'package:caleta_discoteka_client/app/modules/parties/parties_view.dart';
import 'package:caleta_discoteka_client/app/modules/profile/profile_binding.dart';
import 'package:caleta_discoteka_client/app/modules/profile/profile_view.dart';
import 'package:caleta_discoteka_client/app/modules/root/root_binding.dart';
import 'package:caleta_discoteka_client/app/modules/root/root_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;
  static final routes = [
    GetPage(
        name: '/',
        page: () => const RootPage(),
        binding: RootBinding(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        children: [
          GetPage(
              preventDuplicates: true,
              name: _Paths.login,
              page: () => const LoginPage(),
              binding: LoginBinding()),
          GetPage(
              preventDuplicates: true,
              name: _Paths.home,
              page: () => const HomePage(),
              binding: HomeBinding(),
              children: [
                GetPage(
                    preventDuplicates: true,
                    name: _Paths.discoteca,
                    page: () => const DiscotecaPage(),
                    binding: DiscotecaBinding()),
                GetPage(
                    preventDuplicates: true,
                    name: _Paths.parties,
                    page: () => const PartiesPage(),
                    binding: PartiesBinding()),
                GetPage(
                    preventDuplicates: true,
                    name: _Paths.buyTicket,
                    page: () => const BuyTicketPage(),
                    binding: BuyTicketBinding()),
                GetPage(
                    preventDuplicates: true,
                    name: _Paths.profile,
                    page: () => const ProfilePage(),
                    binding: ProfileBinding()),
              ])
        ])
  ];
}
