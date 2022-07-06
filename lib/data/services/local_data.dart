import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/api_keys.dart';

class LocalData {
  /// shared preferences DB

  /// Auto Login
  Future<void> writeAutoLogin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setBool(kAutoLoginKey, true);
  }

  Future<bool> readAcceptAutoLogin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(kAutoLoginKey) ?? false;
  }

  Future<void> writeRejectAutoLogin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setBool(kAutoLoginKey, false);
  }

  /// example save Json Rest API
/*  /// profile info
  Future<void> writeProfileInfo(ProfileInfoModel profileInfoModel) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString(kprofileInfoKey, jsonEncode(profileInfoModel));
  }

  Future<ProfileInfoModel> readProfileInfo() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    Map json = jsonDecode(prefs.getString(kprofileInfoKey).toString());

    return ProfileInfoModel.fromJson(json);
  }

  /// Login password & phone
  Future<void> writeLogin(LogInModel logInModel) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString(kLogInfoKey, jsonEncode(logInModel));
  }

  Future<LogInModel> readLogin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    Map json = jsonDecode(prefs.getString(kLogInfoKey).toString());

    return LogInModel.fromJson(json);
  }*/
}
