import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inova_task/data/models/user_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/utils/colors.dart';

class UserItemWgt extends StatelessWidget {
  final UserModel userModel;
  final int index;
  const UserItemWgt({
    Key? key,
    required this.userModel,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ctx = context;

    return Container(
      width: 100,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(12.0), boxShadow: [
        BoxShadow(
          color: Colors.black45,
          offset: Offset(0, 1),
          blurRadius: 2.0,
        ),
      ]),
      child: Material(
        borderRadius: BorderRadius.circular(12.0),
        color: kDarkAccent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            //  _launchURL(homeItemModel.goPath!);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// name icon
                Expanded(
                  flex: 1,
                  child: FittedBox(
                    child: Text(
                      userModel.name!,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: kSurfaceWhite,
                      ),
                    ),
                  ),
                ),

                /// phone icon
                Spacer(),
                Expanded(
                  flex: 1,
                  child: FloatingActionButton(
                      heroTag: "delivery_item_call" + index.toString(),
                      child: Icon(
                        Icons.call,
                        color: kDarkAccent,
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse("tel:${userModel.phone}"));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
