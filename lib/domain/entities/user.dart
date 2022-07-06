import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String? phone;
  final String? name;

  User({
    required this.phone,
    required this.name,
  });

  @override
  List<Object?> get props => [phone, name];

  @override
  bool get stringify => true;
}
