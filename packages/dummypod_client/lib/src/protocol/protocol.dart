/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'gender.dart' as _i2;
import 'hair.dart' as _i3;
import 'product.dart' as _i4;
import 'quote.dart' as _i5;
import 'user.dart' as _i6;
import 'package:dummypod_client/src/protocol/product.dart' as _i7;
import 'package:dummypod_client/src/protocol/quote.dart' as _i8;
import 'package:dummypod_client/src/protocol/user.dart' as _i9;
import 'package:serverpod_auth_client/module.dart' as _i10;
export 'gender.dart';
export 'hair.dart';
export 'product.dart';
export 'quote.dart';
export 'user.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Gender) {
      return _i2.Gender.fromJson(data) as T;
    }
    if (t == _i3.Hair) {
      return _i3.Hair.fromJson(data, this) as T;
    }
    if (t == _i4.Product) {
      return _i4.Product.fromJson(data, this) as T;
    }
    if (t == _i5.Quote) {
      return _i5.Quote.fromJson(data, this) as T;
    }
    if (t == _i6.User) {
      return _i6.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Gender?>()) {
      return (data != null ? _i2.Gender.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Hair?>()) {
      return (data != null ? _i3.Hair.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Product?>()) {
      return (data != null ? _i4.Product.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Quote?>()) {
      return (data != null ? _i5.Quote.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.User?>()) {
      return (data != null ? _i6.User.fromJson(data, this) : null) as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList()
          as dynamic;
    }
    if (t == List<_i7.Product>) {
      return (data as List).map((e) => deserialize<_i7.Product>(e)).toList()
          as dynamic;
    }
    if (t == List<_i8.Quote>) {
      return (data as List).map((e) => deserialize<_i8.Quote>(e)).toList()
          as dynamic;
    }
    if (t == List<_i9.User>) {
      return (data as List).map((e) => deserialize<_i9.User>(e)).toList()
          as dynamic;
    }
    try {
      return _i10.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i10.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i2.Gender) {
      return 'Gender';
    }
    if (data is _i3.Hair) {
      return 'Hair';
    }
    if (data is _i4.Product) {
      return 'Product';
    }
    if (data is _i5.Quote) {
      return 'Quote';
    }
    if (data is _i6.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i10.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Gender') {
      return deserialize<_i2.Gender>(data['data']);
    }
    if (data['className'] == 'Hair') {
      return deserialize<_i3.Hair>(data['data']);
    }
    if (data['className'] == 'Product') {
      return deserialize<_i4.Product>(data['data']);
    }
    if (data['className'] == 'Quote') {
      return deserialize<_i5.Quote>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i6.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
