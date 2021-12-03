part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const login = _Paths.login;
  static const home = _Paths.home;
  static const discoteca = '$home${_Paths.discoteca}';
  static const profile = '$home${_Paths.profile}';

  static String parties(String state) => '$home/parties/$state';

  static String buyTicket(String idParty) => '$home/buyTicket/$idParty';
}

abstract class _Paths {
  static const login = '/login';
  static const home = '/home';
  static const discoteca = '/discoteca';
  static const profile = '/profile';
  static const parties = '/parties/:state';
  static const buyTicket = '/buyTicket/:idParty';
}
