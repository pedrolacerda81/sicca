import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sicca/features/splash/presentation/splash_page.dart';
import 'package:sicca/features/authentication/presentation/authentication_page.dart';

final List<GetPage> routes = [
  GetPage(name: '/splash', page: () => const SplashPage()),
  GetPage(name: '/authentication', page: () => const AuthenticationPage()),
  // GetPage(name: '/main', page: () => const SplashPage()),
];
