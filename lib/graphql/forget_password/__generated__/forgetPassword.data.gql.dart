// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:kidsflutter_app/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'forgetPassword.data.gql.g.dart';

abstract class GForgetPasswordData
    implements Built<GForgetPasswordData, GForgetPasswordDataBuilder> {
  GForgetPasswordData._();

  factory GForgetPasswordData(
          [void Function(GForgetPasswordDataBuilder b) updates]) =
      _$GForgetPasswordData;

  static void _initializeBuilder(GForgetPasswordDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GForgetPasswordData_forgetPassword get forgetPassword;
  static Serializer<GForgetPasswordData> get serializer =>
      _$gForgetPasswordDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForgetPasswordData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForgetPasswordData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForgetPasswordData.serializer,
        json,
      );
}

abstract class GForgetPasswordData_forgetPassword
    implements
        Built<GForgetPasswordData_forgetPassword,
            GForgetPasswordData_forgetPasswordBuilder> {
  GForgetPasswordData_forgetPassword._();

  factory GForgetPasswordData_forgetPassword(
      [void Function(GForgetPasswordData_forgetPasswordBuilder b)
          updates]) = _$GForgetPasswordData_forgetPassword;

  static void _initializeBuilder(GForgetPasswordData_forgetPasswordBuilder b) =>
      b..G__typename = 'UserResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get status;
  String get message;
  GForgetPasswordData_forgetPassword_user? get user;
  static Serializer<GForgetPasswordData_forgetPassword> get serializer =>
      _$gForgetPasswordDataForgetPasswordSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForgetPasswordData_forgetPassword.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForgetPasswordData_forgetPassword? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForgetPasswordData_forgetPassword.serializer,
        json,
      );
}

abstract class GForgetPasswordData_forgetPassword_user
    implements
        Built<GForgetPasswordData_forgetPassword_user,
            GForgetPasswordData_forgetPassword_userBuilder> {
  GForgetPasswordData_forgetPassword_user._();

  factory GForgetPasswordData_forgetPassword_user(
      [void Function(GForgetPasswordData_forgetPassword_userBuilder b)
          updates]) = _$GForgetPasswordData_forgetPassword_user;

  static void _initializeBuilder(
          GForgetPasswordData_forgetPassword_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get email;
  String? get childname;
  int? get childage;
  String get auth;
  static Serializer<GForgetPasswordData_forgetPassword_user> get serializer =>
      _$gForgetPasswordDataForgetPasswordUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForgetPasswordData_forgetPassword_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForgetPasswordData_forgetPassword_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForgetPasswordData_forgetPassword_user.serializer,
        json,
      );
}
