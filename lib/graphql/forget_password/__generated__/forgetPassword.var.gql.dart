// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:kidsflutter_app/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'forgetPassword.var.gql.g.dart';

abstract class GForgetPasswordVars
    implements Built<GForgetPasswordVars, GForgetPasswordVarsBuilder> {
  GForgetPasswordVars._();

  factory GForgetPasswordVars(
          [void Function(GForgetPasswordVarsBuilder b) updates]) =
      _$GForgetPasswordVars;

  String get email;
  String get newPassword;
  static Serializer<GForgetPasswordVars> get serializer =>
      _$gForgetPasswordVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForgetPasswordVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForgetPasswordVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForgetPasswordVars.serializer,
        json,
      );
}
