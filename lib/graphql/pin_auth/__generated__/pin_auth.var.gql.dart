// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:kidsflutter_app/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'pin_auth.var.gql.g.dart';

abstract class GSetPinVars implements Built<GSetPinVars, GSetPinVarsBuilder> {
  GSetPinVars._();

  factory GSetPinVars([void Function(GSetPinVarsBuilder b) updates]) =
      _$GSetPinVars;

  String get auth;
  String get pin;
  static Serializer<GSetPinVars> get serializer => _$gSetPinVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSetPinVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSetPinVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSetPinVars.serializer,
        json,
      );
}

abstract class GLoginWithPinVars
    implements Built<GLoginWithPinVars, GLoginWithPinVarsBuilder> {
  GLoginWithPinVars._();

  factory GLoginWithPinVars(
          [void Function(GLoginWithPinVarsBuilder b) updates]) =
      _$GLoginWithPinVars;

  String get auth;
  String get pin;
  static Serializer<GLoginWithPinVars> get serializer =>
      _$gLoginWithPinVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginWithPinVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginWithPinVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginWithPinVars.serializer,
        json,
      );
}

abstract class GResetPinVars
    implements Built<GResetPinVars, GResetPinVarsBuilder> {
  GResetPinVars._();

  factory GResetPinVars([void Function(GResetPinVarsBuilder b) updates]) =
      _$GResetPinVars;

  String get auth;
  String get newPin;
  static Serializer<GResetPinVars> get serializer => _$gResetPinVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GResetPinVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GResetPinVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GResetPinVars.serializer,
        json,
      );
}

abstract class GDisablePinVars
    implements Built<GDisablePinVars, GDisablePinVarsBuilder> {
  GDisablePinVars._();

  factory GDisablePinVars([void Function(GDisablePinVarsBuilder b) updates]) =
      _$GDisablePinVars;

  String get auth;
  static Serializer<GDisablePinVars> get serializer =>
      _$gDisablePinVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDisablePinVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDisablePinVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDisablePinVars.serializer,
        json,
      );
}

abstract class GActivatePinVars
    implements Built<GActivatePinVars, GActivatePinVarsBuilder> {
  GActivatePinVars._();

  factory GActivatePinVars([void Function(GActivatePinVarsBuilder b) updates]) =
      _$GActivatePinVars;

  String get auth;
  static Serializer<GActivatePinVars> get serializer =>
      _$gActivatePinVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivatePinVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivatePinVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivatePinVars.serializer,
        json,
      );
}

abstract class GVerifyPinStatusVars
    implements Built<GVerifyPinStatusVars, GVerifyPinStatusVarsBuilder> {
  GVerifyPinStatusVars._();

  factory GVerifyPinStatusVars(
          [void Function(GVerifyPinStatusVarsBuilder b) updates]) =
      _$GVerifyPinStatusVars;

  String get auth;
  static Serializer<GVerifyPinStatusVars> get serializer =>
      _$gVerifyPinStatusVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVerifyPinStatusVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVerifyPinStatusVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVerifyPinStatusVars.serializer,
        json,
      );
}
