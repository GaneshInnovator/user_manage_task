// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:kidsflutter_app/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'userLogin.data.gql.g.dart';

abstract class GLoginUserData
    implements Built<GLoginUserData, GLoginUserDataBuilder> {
  GLoginUserData._();

  factory GLoginUserData([void Function(GLoginUserDataBuilder b) updates]) =
      _$GLoginUserData;

  static void _initializeBuilder(GLoginUserDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLoginUserData_loginUser get loginUser;
  static Serializer<GLoginUserData> get serializer =>
      _$gLoginUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginUserData.serializer,
        json,
      );
}

abstract class GLoginUserData_loginUser
    implements
        Built<GLoginUserData_loginUser, GLoginUserData_loginUserBuilder> {
  GLoginUserData_loginUser._();

  factory GLoginUserData_loginUser(
          [void Function(GLoginUserData_loginUserBuilder b) updates]) =
      _$GLoginUserData_loginUser;

  static void _initializeBuilder(GLoginUserData_loginUserBuilder b) =>
      b..G__typename = 'UserResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get status;
  String get message;
  GLoginUserData_loginUser_user? get user;
  static Serializer<GLoginUserData_loginUser> get serializer =>
      _$gLoginUserDataLoginUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginUserData_loginUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginUserData_loginUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginUserData_loginUser.serializer,
        json,
      );
}

abstract class GLoginUserData_loginUser_user
    implements
        Built<GLoginUserData_loginUser_user,
            GLoginUserData_loginUser_userBuilder> {
  GLoginUserData_loginUser_user._();

  factory GLoginUserData_loginUser_user(
          [void Function(GLoginUserData_loginUser_userBuilder b) updates]) =
      _$GLoginUserData_loginUser_user;

  static void _initializeBuilder(GLoginUserData_loginUser_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get email;
  String? get childname;
  String get auth;
  int? get childage;
  static Serializer<GLoginUserData_loginUser_user> get serializer =>
      _$gLoginUserDataLoginUserUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginUserData_loginUser_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginUserData_loginUser_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginUserData_loginUser_user.serializer,
        json,
      );
}
