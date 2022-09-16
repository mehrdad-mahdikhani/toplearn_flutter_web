import 'package:fluro/fluro.dart';
import 'package:web_application/src/presentation/views/detail/detail_desktop_screen.dart';
import 'package:web_application/src/presentation/views/home/home_page.dart';

class AppRouter {
  static final appRouter = FluroRouter();

  static Handler homePage = Handler(handlerFunc: (context, parameters) {
    return const HomePage();
  });

  static Handler detailPage = Handler(handlerFunc: (context, parameters) {
    return const DetailDesktopScreen();
  });

  static void defineRoutes() {
    appRouter.define('/', handler: homePage);
    appRouter.define('/detail', handler: detailPage);
  }
}
