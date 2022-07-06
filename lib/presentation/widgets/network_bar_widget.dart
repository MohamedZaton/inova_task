import 'package:flutter/material.dart';
import 'package:inova_task/core/utils/screens.dart';

import '../../core/utils/constants.dart';

class NetworkBarWidget extends StatelessWidget {
  const NetworkBarWidget({Key? key, this.isConnect = true}) : super(key: key);
  final bool isConnect;

  @override
  Widget build(BuildContext context) {
    return isConnect
        ? SizedBox(
            width: ScreenDevices.width(context),
            height: 1,
          )
        : Container(
            alignment: Alignment.center,
            color: Colors.red,
            height: 32,
            width: ScreenDevices.width(context),
            child: Center(
              child: Text(
                kOfflineTxt,
                style: Theme.of(context).textTheme.headline6!,
              ),
            ),
          );
  }
}
