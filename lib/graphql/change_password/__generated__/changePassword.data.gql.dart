// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:kidsflutter_app/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'changePassword.data.gql.g.dart';

abstract class GChangePasswordData
    implements Built<GChangePasswordData, GChangePasswordDataBuilder> {
  GChangePasswordData._();

  factory GChangePasswordData(
          [void Function(GChangePasswordDataBuilder b) updates]) =
      _$GChangePasswordData;

  static void _initializeBuilder(GChangePasswordDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GChangePasswordData_changePassword get changePassword;
  static Serializer<GChangePasswordData> get serializer =>
      _$gChangePasswordDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangePasswordData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangePasswordData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangePasswordData.serializer,
        json,
      );
}

abstract class GChangePasswordData_changePassword
    implements
        Built<GChangePasswordData_changePassword,
            GChangePasswordData_changePasswordBuilder> {
  GChangePasswordData_changePassword._();

  factory GChangePasswordData_changePassword(
      [void Function(GChangePasswordData_changePasswordBuilder b)
          updates]) = _$GChangePasswordData_changePassword;

  static void _initializeBuilder(GChangePasswordData_changePasswordBuilder b) =>
      b..G__typename = 'UserResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get status;
  String get message;
  GChangePasswordData_changePassword_user? get user;
  static Serializer<GChangePasswordData_changePassword> get serializer =>
      _$gChangePasswordDataChangePasswordSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangePasswordData_changePassword.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangePasswordData_changePassword? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangePasswordData_changePassword.serializer,
        json,
      );
}

abstract class GChangePasswordData_changePassword_user
    implements
        Built<GChangePasswordData_changePassword_user,
            GChangePasswordData_changePassword_userBuilder> {
  GChangePasswordData_changePassword_user._();

  factory GChangePasswordData_changePassword_user(
      [void Function(GChangePasswordData_changePassword_userBuilder b)
          updates]) = _$GChangePasswordData_changePassword_user;

  static void _initializeBuilder(
          GChangePasswordData_changePassword_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get email;
  String? get childname;
  int? get childage;
  String get auth;
  static Serializer<GChangePasswordData_changePassword_user> get serializer =>
      _$gChangePasswordDataChangePasswordUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangePasswordData_changePassword_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangePasswordData_changePassword_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangePasswordData_changePassword_user.serializer,
        json,
      );
}
