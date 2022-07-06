import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/constants.dart';
import '../../../core/utils/images_path.dart';
import '../../../core/utils/screens.dart';
import '../../widgets/message_img_btn_widget.dart';
import '../../widgets/user_item_widget.dart';
import 'home_logic.dart';

class HomePage extends StatelessWidget {
  static const String id = "/home_page";
  final homeLogic = Get.put(HomeLogic());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(kContactListTxt),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(16.0),
          child: Column(
            children: [
              //WebBarWidget(),

              Expanded(child: Obx(() {
                if (homeLogic.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                } else if (homeLogic.isLoading.value == false &&
                    homeLogic.mainItemList.length <= 0) {
                  return Center(
                      child: MessageImgButtonWdgt(
                          message: kUserEmptyTxt, imageUrl: kEmptyImg));
                } else {
                  return Container(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: homeLogic.mainItemList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: ScreenDevices.heigth(context) * 0.01),
                          child: UserItemWgt(
                            userModel: homeLogic.mainItemList[index],
                            index: index,
                          ),
                        );
                      },
                    ),
                  );
                }
              })),
            ],
          ),
        ),
      ),
    );
  }
}
