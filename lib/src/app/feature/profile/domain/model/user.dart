import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// User model class
@freezed
class User with _$User {
  /// Constructor
  factory User({
    String? firstName,
    String? lastName,
    String? email,
  }) = _User;

  /// FromJson and toJson method for [User] model class
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
