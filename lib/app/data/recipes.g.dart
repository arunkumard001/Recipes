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
    ..enabled = json['enabled'] as int
    ..email = json['email'] as String
    ..firstName = json['first_name'] as String
    ..middleName = json['middle_name'] as String
    ..lastName = json['last_name'] as String
    ..fullName = json['full_name'] as String
    ..username = json['username'] as String
    ..language = json['language'] as String
    ..gender = json['gender'] as String
    ..phone = json['phone'] as String
    ..mobileNo = json['mobile_no'] as String
    ..lastLogin = json['last_login'] == null
        ? null
        : DateTime.parse(json['last_login'] as String)
    ..userImage = json['user_image'] as String;
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
      'enabled': instance.enabled,
      'email': instance.email,
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'full_name': instance.fullName,
      'username': instance.username,
      'language': instance.language,
      'gender': instance.gender,
      'phone': instance.phone,
      'mobile_no': instance.mobileNo,
      'last_login': instance.lastLogin?.toIso8601String(),
      'user_image': instance.userImage,
    };
