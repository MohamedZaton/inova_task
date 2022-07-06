import 'dart:convert';

import '../../domain/entities/user.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));
String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel extends User {
  String? phone;
  String? name;
  UserModel({
    this.phone,
    this.name,
  }) : super(phone: phone, name: name);

  factory UserModel.fromJson(dynamic json) {
    return UserModel(
      name: json['name'],
      phone: json['phone'],
    );
  }

  UserModel copyWith({
    String? phone,
    String? name,
  }) =>
      UserModel(
        phone: phone ?? this.phone,
        name: name ?? this.name,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['phone'] = phone;
    map['name'] = name;
    return map;
  }

  static List<UserModel> getListObject(List<dynamic> jsonBody) {
    List<UserModel> itemsList =
        List<UserModel>.from(jsonBody.map((val) => UserModel.fromJson(val)));
    return itemsList;
  }
}
