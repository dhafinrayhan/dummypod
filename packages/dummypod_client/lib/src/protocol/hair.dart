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
    required this.type,
  });

  factory Hair({
    required String color,
    required String type,
  }) = _HairImpl;

  factory Hair.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Hair(
      color:
          serializationManager.deserialize<String>(jsonSerialization['color']),
      type: serializationManager.deserialize<String>(jsonSerialization['type']),
    );
  }

  String color;

  String type;

  Hair copyWith({
    String? color,
    String? type,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'color': color,
      'type': type,
    };
  }
}

class _HairImpl extends Hair {
  _HairImpl({
    required String color,
    required String type,
  }) : super._(
          color: color,
          type: type,
        );

  @override
  Hair copyWith({
    String? color,
    String? type,
  }) {
    return Hair(
      color: color ?? this.color,
      type: type ?? this.type,
    );
  }
}
