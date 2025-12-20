// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:kidsflutter_app/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'userLogin.var.gql.g.dart';

abstract class GLoginUserVars
    implements Built<GLoginUserVars, GLoginUserVarsBuilder> {
  GLoginUserVars._();

  factory GLoginUserVars([void Function(GLoginUserVarsBuilder b) updates]) =
      _$GLoginUserVars;

  String get email;
  String get password;
  static Serializer<GLoginUserVars> get serializer =>
      _$gLoginUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginUserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginUserVars.serializer,
        json,
      );
}
