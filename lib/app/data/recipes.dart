import 'package:json_annotation/json_annotation.dart';

import 'package:renovation_core/model.dart';

part "recipes.g.dart";

@JsonSerializable()
class Recipe extends FrappeDocument {
  Recipe() : super("Recipe");

  factory Recipe.fromJson(Map<String, dynamic>? json) =>
      _$RecipeFromJson(json!);

  int? enabled;
  String? email;

  @JsonKey(name: 'first_name')
  String? firstName;

  @JsonKey(name: 'middle_name')
  String? middleName;

  @JsonKey(name: 'last_name')
  String? lastName;

  @JsonKey(name: 'full_name')
  String? fullName;

  String? username;
  String? language;
  String? gender;
  String? phone;

  @JsonKey(name: 'mobile_no')
  String? mobileNo;

  @JsonKey(name: 'last_login')
  DateTime? lastLogin;

  @JsonKey(name: 'user_image')
  String? userImage;

  @override
  Map<String, dynamic> toJson() => _$RecipeToJson(this);

  @override
  T fromJson<T>(Map<String, dynamic>? json) => Recipe.fromJson(json) as T;
}
