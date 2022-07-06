import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:inova_task/data/models/user_model.dart';

import 'app_api.dart';

class LocalAppApi implements AppApi {
  final String localServer = 'assets/local_data/';

  @override
  Future<List<UserModel>> getUsersRequest() async {
    String jsonContent =
        await rootBundle.loadString(localServer + 'user_data.json');
    List<dynamic> jsonData = json.decode(jsonContent);
    List<UserModel> items = UserModel.getListObject(jsonData);
    return items;
  }
}
