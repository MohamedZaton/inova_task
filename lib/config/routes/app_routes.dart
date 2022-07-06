import 'package:get/get.dart';

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
    ];
  }
}
