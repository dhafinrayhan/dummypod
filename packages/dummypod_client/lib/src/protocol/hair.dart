/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Hair extends _i1.SerializableEntity {
  Hair._({
    required this.color,
    required this.tpye,
  });

  factory Hair({
    required String color,
    required String tpye,
  }) = _HairImpl;

  factory Hair.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Hair(
      color:
          serializationManager.deserialize<String>(jsonSerialization['color']),
      tpye: serializationManager.deserialize<String>(jsonSerialization['tpye']),
    );
  }

  String color;

  String tpye;

  Hair copyWith({
    String? color,
    String? tpye,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'color': color,
      'tpye': tpye,
    };
  }
}

class _HairImpl extends Hair {
  _HairImpl({
    required String color,
    required String tpye,
  }) : super._(
          color: color,
          tpye: tpye,
        );

  @override
  Hair copyWith({
    String? color,
    String? tpye,
  }) {
    return Hair(
      color: color ?? this.color,
      tpye: tpye ?? this.tpye,
    );
  }
}
