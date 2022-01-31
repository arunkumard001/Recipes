// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recipe _$RecipeFromJson(Map<String, dynamic> json) {
  return Recipe()
    ..doctype = json['doctype'] as String
    ..name = json['name'] as String
    ..owner = json['owner'] as String
    ..docStatus =
        FrappeDocFieldConverter.intToFrappeDocStatus(json['docstatus'] as int)
    ..isLocal = FrappeDocFieldConverter.checkToBool(json['__islocal'] as int)
    ..unsaved = FrappeDocFieldConverter.checkToBool(json['__unsaved'] as int)
    ..amendedFrom = json['amended_from'] as String
    ..idx = FrappeDocFieldConverter.idxFromString(json['idx'])
    ..parent = json['parent'] as String
    ..parentType = json['parenttype'] as String
    ..creation = json['creation'] == null
        ? null
        : DateTime.parse(json['creation'] as String)
    ..parentField = json['parentfield'] as String
    ..modified = json['modified'] == null
        ? null
        : DateTime.parse(json['modified'] as String)
    ..modifiedBy = json['modified_by'] as String
    ..data = json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RecipeToJson(Recipe instance) => <String, dynamic>{
      'doctype': instance.doctype,
      'name': instance.name,
      'owner': instance.owner,
      'docstatus':
          FrappeDocFieldConverter.frappeDocStatusToInt(instance.docStatus),
      '__islocal': FrappeDocFieldConverter.boolToCheck(instance.isLocal),
      '__unsaved': FrappeDocFieldConverter.boolToCheck(instance.unsaved),
      'amended_from': instance.amendedFrom,
      'idx': instance.idx,
      'parent': instance.parent,
      'parenttype': instance.parentType,
      'creation': FrappeDocFieldConverter.toFrappeDateTime(instance.creation),
      'parentfield': instance.parentField,
      'modified': FrappeDocFieldConverter.toFrappeDateTime(instance.modified),
      'modified_by': instance.modifiedBy,
      'data': instance.data,
    };
