/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_auth_server/module.dart' as _i2;
import 'protocol.dart' as _i3;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class User extends _i1.TableRow {
  User._({
    int? id,
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
  }) : super(id);

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

  static final t = UserTable();

  static const db = UserRepository._();

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

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'userInfoId': userInfoId,
      'age': age,
      'gender': gender,
      'phone': phone,
      'birthDate': birthDate,
      'bloodGroup': bloodGroup,
      'height': height,
      'weight': weight,
      'eyeColor': eyeColor,
      'hair': hair,
      'domain': domain,
      'ip': ip,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.allToJson(),
      if (age != null) 'age': age,
      if (gender != null) 'gender': gender?.toJson(),
      if (phone != null) 'phone': phone,
      if (birthDate != null) 'birthDate': birthDate?.toJson(),
      if (bloodGroup != null) 'bloodGroup': bloodGroup,
      if (height != null) 'height': height,
      if (weight != null) 'weight': weight,
      if (eyeColor != null) 'eyeColor': eyeColor,
      if (hair != null) 'hair': hair?.allToJson(),
      if (domain != null) 'domain': domain,
      if (ip != null) 'ip': ip,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'userInfoId':
        userInfoId = value;
        return;
      case 'age':
        age = value;
        return;
      case 'gender':
        gender = value;
        return;
      case 'phone':
        phone = value;
        return;
      case 'birthDate':
        birthDate = value;
        return;
      case 'bloodGroup':
        bloodGroup = value;
        return;
      case 'height':
        height = value;
        return;
      case 'weight':
        weight = value;
        return;
      case 'eyeColor':
        eyeColor = value;
        return;
      case 'hair':
        hair = value;
        return;
      case 'domain':
        domain = value;
        return;
      case 'ip':
        ip = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<User>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.db.find<User>(
      where: where != null ? where(User.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<User?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.db.findSingleRow<User>(
      where: where != null ? where(User.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<User?> findById(
    _i1.Session session,
    int id, {
    UserInclude? include,
  }) async {
    return session.db.findById<User>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<User>(
      where: where(User.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<User>(
      where: where != null ? where(User.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static UserInclude include({_i2.UserInfoInclude? userInfo}) {
    return UserInclude._(userInfo: userInfo);
  }

  static UserIncludeList includeList({
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    UserInclude? include,
  }) {
    return UserIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(User.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(User.t),
      include: include,
    );
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

class UserTable extends _i1.Table {
  UserTable({super.tableRelation}) : super(tableName: 'user') {
    userInfoId = _i1.ColumnInt(
      'userInfoId',
      this,
    );
    age = _i1.ColumnInt(
      'age',
      this,
    );
    gender = _i1.ColumnEnum(
      'gender',
      this,
      _i1.EnumSerialization.byName,
    );
    phone = _i1.ColumnString(
      'phone',
      this,
    );
    birthDate = _i1.ColumnDateTime(
      'birthDate',
      this,
    );
    bloodGroup = _i1.ColumnString(
      'bloodGroup',
      this,
    );
    height = _i1.ColumnInt(
      'height',
      this,
    );
    weight = _i1.ColumnDouble(
      'weight',
      this,
    );
    eyeColor = _i1.ColumnString(
      'eyeColor',
      this,
    );
    hair = _i1.ColumnSerializable(
      'hair',
      this,
    );
    domain = _i1.ColumnString(
      'domain',
      this,
    );
    ip = _i1.ColumnString(
      'ip',
      this,
    );
  }

  late final _i1.ColumnInt userInfoId;

  _i2.UserInfoTable? _userInfo;

  late final _i1.ColumnInt age;

  late final _i1.ColumnEnum<_i3.Gender> gender;

  late final _i1.ColumnString phone;

  late final _i1.ColumnDateTime birthDate;

  late final _i1.ColumnString bloodGroup;

  late final _i1.ColumnInt height;

  late final _i1.ColumnDouble weight;

  late final _i1.ColumnString eyeColor;

  late final _i1.ColumnSerializable hair;

  late final _i1.ColumnString domain;

  late final _i1.ColumnString ip;

  _i2.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _i1.createRelationTable(
      relationFieldName: 'userInfo',
      field: User.t.userInfoId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        userInfoId,
        age,
        gender,
        phone,
        birthDate,
        bloodGroup,
        height,
        weight,
        eyeColor,
        hair,
        domain,
        ip,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'userInfo') {
      return userInfo;
    }
    return null;
  }
}

@Deprecated('Use UserTable.t instead.')
UserTable tUser = UserTable();

class UserInclude extends _i1.IncludeObject {
  UserInclude._({_i2.UserInfoInclude? userInfo}) {
    _userInfo = userInfo;
  }

  _i2.UserInfoInclude? _userInfo;

  @override
  Map<String, _i1.Include?> get includes => {'userInfo': _userInfo};

  @override
  _i1.Table get table => User.t;
}

class UserIncludeList extends _i1.IncludeList {
  UserIncludeList._({
    _i1.WhereExpressionBuilder<UserTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(User.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => User.t;
}

class UserRepository {
  const UserRepository._();

  final attachRow = const UserAttachRowRepository._();

  Future<List<User>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.dbNext.find<User>(
      where: where?.call(User.t),
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<User?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.dbNext.findFirstRow<User>(
      where: where?.call(User.t),
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<User?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.dbNext.findById<User>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<User>> insert(
    _i1.Session session,
    List<User> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<User>(
      rows,
      transaction: transaction,
    );
  }

  Future<User> insertRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<User>(
      row,
      transaction: transaction,
    );
  }

  Future<List<User>> update(
    _i1.Session session,
    List<User> rows, {
    _i1.ColumnSelections<UserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<User>(
      rows,
      columns: columns?.call(User.t),
      transaction: transaction,
    );
  }

  Future<User> updateRow(
    _i1.Session session,
    User row, {
    _i1.ColumnSelections<UserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<User>(
      row,
      columns: columns?.call(User.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<User> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<User>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<User>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<User>(
      where: where(User.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<User>(
      where: where?.call(User.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class UserAttachRowRepository {
  const UserAttachRowRepository._();

  Future<void> userInfo(
    _i1.Session session,
    User user,
    _i2.UserInfo userInfo,
  ) async {
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }
    if (userInfo.id == null) {
      throw ArgumentError.notNull('userInfo.id');
    }

    var $user = user.copyWith(userInfoId: userInfo.id);
    await session.dbNext.updateRow<User>(
      $user,
      columns: [User.t.userInfoId],
    );
  }
}
