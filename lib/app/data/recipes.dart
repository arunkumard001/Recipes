import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:recipes/app/modules/dashboard/data_model.dart';

import 'package:renovation_core/model.dart';

part "recipes.g.dart";

@JsonSerializable()
class Recipe extends FrappeDocument {
  Recipe() : super("Recipe");
  Data? data;
  factory Recipe.fromJson(json) => _$RecipeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RecipeToJson(this);

  @override
  T fromJson<T>(json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }
}
