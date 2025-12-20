// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:kidsflutter_app/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'userRegister.data.gql.g.dart';

abstract class GRegisterUserData
    implements Built<GRegisterUserData, GRegisterUserDataBuilder> {
  GRegisterUserData._();

  factory GRegisterUserData(
          [void Function(GRegisterUserDataBuilder b) updates]) =
      _$GRegisterUserData;

  static void _initializeBuilder(GRegisterUserDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRegisterUserData_registerUser get registerUser;
  static Serializer<GRegisterUserData> get serializer =>
      _$gRegisterUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRegisterUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRegisterUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRegisterUserData.serializer,
        json,
      );
}

abstract class GRegisterUserData_registerUser
    implements
        Built<GRegisterUserData_registerUser,
            GRegisterUserData_registerUserBuilder> {
  GRegisterUserData_registerUser._();

  factory GRegisterUserData_registerUser(
          [void Function(GRegisterUserData_registerUserBuilder b) updates]) =
      _$GRegisterUserData_registerUser;

  static void _initializeBuilder(GRegisterUserData_registerUserBuilder b) =>
      b..G__typename = 'UserResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get status;
  String get message;
  GRegisterUserData_registerUser_user? get user;
  static Serializer<GRegisterUserData_registerUser> get serializer =>
      _$gRegisterUserDataRegisterUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRegisterUserData_registerUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRegisterUserData_registerUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRegisterUserData_registerUser.serializer,
        json,
      );
}

abstract class GRegisterUserData_registerUser_user
    implements
        Built<GRegisterUserData_registerUser_user,
            GRegisterUserData_registerUser_userBuilder> {
  GRegisterUserData_registerUser_user._();

  factory GRegisterUserData_registerUser_user(
      [void Function(GRegisterUserData_registerUser_userBuilder b)
          updates]) = _$GRegisterUserData_registerUser_user;

  static void _initializeBuilder(
          GRegisterUserData_registerUser_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get email;
  String get password;
  String? get childname;
  int? get childage;
  String get auth;
  static Serializer<GRegisterUserData_registerUser_user> get serializer =>
      _$gRegisterUserDataRegisterUserUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRegisterUserData_registerUser_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRegisterUserData_registerUser_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRegisterUserData_registerUser_user.serializer,
        json,
      );
}
