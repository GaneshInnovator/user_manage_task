// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:kidsflutter_app/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'userRegister.var.gql.g.dart';

abstract class GRegisterUserVars
    implements Built<GRegisterUserVars, GRegisterUserVarsBuilder> {
  GRegisterUserVars._();

  factory GRegisterUserVars(
          [void Function(GRegisterUserVarsBuilder b) updates]) =
      _$GRegisterUserVars;

  String get name;
  String get email;
  String get password;
  String? get childname;
  int? get childage;
  static Serializer<GRegisterUserVars> get serializer =>
      _$gRegisterUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRegisterUserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRegisterUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRegisterUserVars.serializer,
        json,
      );
}
