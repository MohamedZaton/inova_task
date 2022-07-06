import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:inova_task/presentation/pages/home/home_logic.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('''
Test the state of the Loading Contact List all of its lifecycles''', () {
    final homeLogicTest = HomeLogic();
    expect(homeLogicTest.isLoading.value, false);
    expect(homeLogicTest.mainItemList.value.length, 0);
    Get.put(HomeLogic);
    homeLogicTest.fetchUserContactList();
    expect(homeLogicTest.isLoading.value, true);
  });
}
