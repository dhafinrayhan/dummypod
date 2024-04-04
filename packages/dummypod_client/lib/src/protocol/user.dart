/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'package:serverpod_auth_client/module.dart' as _i2;
import 'protocol.dart' as _i3;

abstract class User extends _i1.SerializableEntity {
  User._({
    this.id,
    required this.userInfoId,
    this.userInfo,
    this.age,
    this.gender,
    this.phone,
    this.birthDate,
    this.bloodGroup,
    this.height,
    this.weight,
    this.eyeColor,
    this.hair,
    this.domain,
    this.ip,
  });

  factory User({
    int? id,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    int? age,
    _i3.Gender? gender,
    String? phone,
    DateTime? birthDate,
    String? bloodGroup,
    int? height,
    double? weight,
    String? eyeColor,
    _i3.Hair? hair,
    String? domain,
    String? ip,
  }) = _UserImpl;

  factory User.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return User(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      userInfoId: serializationManager
          .deserialize<int>(jsonSerialization['userInfoId']),
      userInfo: serializationManager
          .deserialize<_i2.UserInfo?>(jsonSerialization['userInfo']),
      age: serializationManager.deserialize<int?>(jsonSerialization['age']),
      gender: serializationManager
          .deserialize<_i3.Gender?>(jsonSerialization['gender']),
      phone:
          serializationManager.deserialize<String?>(jsonSerialization['phone']),
      birthDate: serializationManager
          .deserialize<DateTime?>(jsonSerialization['birthDate']),
      bloodGroup: serializationManager
          .deserialize<String?>(jsonSerialization['bloodGroup']),
      height:
          serializationManager.deserialize<int?>(jsonSerialization['height']),
      weight: serializationManager
          .deserialize<double?>(jsonSerialization['weight']),
      eyeColor: serializationManager
          .deserialize<String?>(jsonSerialization['eyeColor']),
      hair: serializationManager
          .deserialize<_i3.Hair?>(jsonSerialization['hair']),
      domain: serializationManager
          .deserialize<String?>(jsonSerialization['domain']),
      ip: serializationManager.deserialize<String?>(jsonSerialization['ip']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userInfoId;

  _i2.UserInfo? userInfo;

  int? age;

  _i3.Gender? gender;

  String? phone;

  DateTime? birthDate;

  String? bloodGroup;

  int? height;

  double? weight;

  String? eyeColor;

  _i3.Hair? hair;

  String? domain;

  String? ip;

  User copyWith({
    int? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    int? age,
    _i3.Gender? gender,
    String? phone,
    DateTime? birthDate,
    String? bloodGroup,
    int? height,
    double? weight,
    String? eyeColor,
    _i3.Hair? hair,
    String? domain,
    String? ip,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      if (age != null) 'age': age,
      if (gender != null) 'gender': gender?.toJson(),
      if (phone != null) 'phone': phone,
      if (birthDate != null) 'birthDate': birthDate?.toJson(),
      if (bloodGroup != null) 'bloodGroup': bloodGroup,
      if (height != null) 'height': height,
      if (weight != null) 'weight': weight,
      if (eyeColor != null) 'eyeColor': eyeColor,
      if (hair != null) 'hair': hair?.toJson(),
      if (domain != null) 'domain': domain,
      if (ip != null) 'ip': ip,
    };
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    int? age,
    _i3.Gender? gender,
    String? phone,
    DateTime? birthDate,
    String? bloodGroup,
    int? height,
    double? weight,
    String? eyeColor,
    _i3.Hair? hair,
    String? domain,
    String? ip,
  }) : super._(
          id: id,
          userInfoId: userInfoId,
          userInfo: userInfo,
          age: age,
          gender: gender,
          phone: phone,
          birthDate: birthDate,
          bloodGroup: bloodGroup,
          height: height,
          weight: weight,
          eyeColor: eyeColor,
          hair: hair,
          domain: domain,
          ip: ip,
        );

  @override
  User copyWith({
    Object? id = _Undefined,
    int? userInfoId,
    Object? userInfo = _Undefined,
    Object? age = _Undefined,
    Object? gender = _Undefined,
    Object? phone = _Undefined,
    Object? birthDate = _Undefined,
    Object? bloodGroup = _Undefined,
    Object? height = _Undefined,
    Object? weight = _Undefined,
    Object? eyeColor = _Undefined,
    Object? hair = _Undefined,
    Object? domain = _Undefined,
    Object? ip = _Undefined,
  }) {
    return User(
      id: id is int? ? id : this.id,
      userInfoId: userInfoId ?? this.userInfoId,
      userInfo:
          userInfo is _i2.UserInfo? ? userInfo : this.userInfo?.copyWith(),
      age: age is int? ? age : this.age,
      gender: gender is _i3.Gender? ? gender : this.gender,
      phone: phone is String? ? phone : this.phone,
      birthDate: birthDate is DateTime? ? birthDate : this.birthDate,
      bloodGroup: bloodGroup is String? ? bloodGroup : this.bloodGroup,
      height: height is int? ? height : this.height,
      weight: weight is double? ? weight : this.weight,
      eyeColor: eyeColor is String? ? eyeColor : this.eyeColor,
      hair: hair is _i3.Hair? ? hair : this.hair?.copyWith(),
      domain: domain is String? ? domain : this.domain,
      ip: ip is String? ? ip : this.ip,
    );
  }
}
