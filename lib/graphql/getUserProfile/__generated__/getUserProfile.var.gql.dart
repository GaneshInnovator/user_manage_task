// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:kidsflutter_app/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'getUserProfile.var.gql.g.dart';

abstract class GGetUserByTokenVars
    implements Built<GGetUserByTokenVars, GGetUserByTokenVarsBuilder> {
  GGetUserByTokenVars._();

  factory GGetUserByTokenVars(
          [void Function(GGetUserByTokenVarsBuilder b) updates]) =
      _$GGetUserByTokenVars;

  String get auth;
  static Serializer<GGetUserByTokenVars> get serializer =>
      _$gGetUserByTokenVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserByTokenVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetUserByTokenVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserByTokenVars.serializer,
        json,
      );
}
