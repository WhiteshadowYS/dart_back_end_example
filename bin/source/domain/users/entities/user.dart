import 'package:freezed_annotation/freezed_annotation.dart';

import 'base_user.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User implements BaseUser {
  @JsonSerializable()
  @Implements<BaseUser>()
  factory User(int id, String? name, String email) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
