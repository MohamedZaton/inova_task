import 'package:get/get.dart';
import 'package:inova_task/presentation/pages/splash/splash_logic.dart';
import 'package:inova_task/presentation/pages/splash/splash_view.dart';

import '../../presentation/pages/home/home_logic.dart';
import '../../presentation/pages/home/home_view.dart';

class AppRoutes {
  static List<GetPage<dynamic>>? onGenerateRoutes() {
    return [
      GetPage(
        name: HomePage.id,
        page: () => HomePage(),
        binding: BindingsBuilder(() {
          Get.lazyPut<HomeLogic>(() => HomeLogic());
        }),
      ),
      GetPage(
        name: SplashPage.id,
        page: () => SplashPage(),
        binding: BindingsBuilder(() {
          Get.lazyPut<SplashLogic>(() => SplashLogic());
        }),
      ),
    ];
  }
}
