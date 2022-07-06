import 'package:flutter_test/flutter_test.dart';
import 'package:inova_task/data/models/user_model.dart';
import 'package:inova_task/data/services/local_app_api.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();

  group("contact List  request ", () {
    test(" get Mock request", () async {
      List<UserModel> usersList = await LocalAppApi().getUsersRequest();
      print("Users List length testing ${usersList.length}");

      expect(usersList.length, greaterThanOrEqualTo(1));
    });
  });
}
