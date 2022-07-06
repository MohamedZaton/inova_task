import 'package:get/get.dart';
import 'package:inova_task/data/models/user_model.dart';
import 'package:inova_task/data/repositories/user_repository_impl.dart';

class HomeLogic extends GetxController {
  RxBool isLoading = false.obs;
  RxList<UserModel> mainItemList = <UserModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchUserContactList();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void fetchUserContactList() async {
    isLoading.value = true;
    final response = await UserRepositoryImpl().getUserList();
    response.fold((failure) {
      isLoading.value = false;
      print("[fetchUserContactList] error getUserList : ${failure.message}");
      return;
    }, (usersList) {
      isLoading.value = false;
      mainItemList.value = usersList;
      return;
    });
  }
}
