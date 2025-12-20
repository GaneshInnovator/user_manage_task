// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:kidsflutter_app/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'changePassword.var.gql.g.dart';

abstract class GChangePasswordVars
    implements Built<GChangePasswordVars, GChangePasswordVarsBuilder> {
  GChangePasswordVars._();

  factory GChangePasswordVars(
          [void Function(GChangePasswordVarsBuilder b) updates]) =
      _$GChangePasswordVars;

  String get auth;
  String get oldPassword;
  String get newPassword;
  static Serializer<GChangePasswordVars> get serializer =>
      _$gChangePasswordVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangePasswordVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangePasswordVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangePasswordVars.serializer,
        json,
      );
}
