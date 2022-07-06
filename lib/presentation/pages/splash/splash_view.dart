import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/images_path.dart';
import '../../widgets/flux_image.dart';
import '../home/home_view.dart';
import 'splash_logic.dart';

class SplashPage extends StatelessWidget {
  static const String id = "/splash";

  final logic = Get.put(SplashLogic());

  @override
  Widget build(BuildContext context) {
    double? targetValue = 200;

    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 0, end: targetValue),
        duration: const Duration(seconds: 2),
        builder: (context, value, Widget? child) {
          return FluxImage(
            imageUrl: kLogoAppImg,
            width: value,
            height: value,
          );
        },
        child: FluxImage(imageUrl: kLogoAppImg),
        onEnd: () async {
          return Get.offAll(() => HomePage());
        },
      ),
    );
  }
}
