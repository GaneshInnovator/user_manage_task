// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:kidsflutter_app/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'getUserProfile.data.gql.g.dart';

abstract class GGetUserByTokenData
    implements Built<GGetUserByTokenData, GGetUserByTokenDataBuilder> {
  GGetUserByTokenData._();

  factory GGetUserByTokenData(
          [void Function(GGetUserByTokenDataBuilder b) updates]) =
      _$GGetUserByTokenData;

  static void _initializeBuilder(GGetUserByTokenDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetUserByTokenData_getUserByToken get getUserByToken;
  static Serializer<GGetUserByTokenData> get serializer =>
      _$gGetUserByTokenDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserByTokenData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetUserByTokenData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserByTokenData.serializer,
        json,
      );
}

abstract class GGetUserByTokenData_getUserByToken
    implements
        Built<GGetUserByTokenData_getUserByToken,
            GGetUserByTokenData_getUserByTokenBuilder> {
  GGetUserByTokenData_getUserByToken._();

  factory GGetUserByTokenData_getUserByToken(
      [void Function(GGetUserByTokenData_getUserByTokenBuilder b)
          updates]) = _$GGetUserByTokenData_getUserByToken;

  static void _initializeBuilder(GGetUserByTokenData_getUserByTokenBuilder b) =>
      b..G__typename = 'UserResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get status;
  String get message;
  GGetUserByTokenData_getUserByToken_user? get user;
  static Serializer<GGetUserByTokenData_getUserByToken> get serializer =>
      _$gGetUserByTokenDataGetUserByTokenSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserByTokenData_getUserByToken.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetUserByTokenData_getUserByToken? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserByTokenData_getUserByToken.serializer,
        json,
      );
}

abstract class GGetUserByTokenData_getUserByToken_user
    implements
        Built<GGetUserByTokenData_getUserByToken_user,
            GGetUserByTokenData_getUserByToken_userBuilder> {
  GGetUserByTokenData_getUserByToken_user._();

  factory GGetUserByTokenData_getUserByToken_user(
      [void Function(GGetUserByTokenData_getUserByToken_userBuilder b)
          updates]) = _$GGetUserByTokenData_getUserByToken_user;

  static void _initializeBuilder(
          GGetUserByTokenData_getUserByToken_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get image;
  String get email;
  String? get childname;
  int? get childage;
  String get auth;
  static Serializer<GGetUserByTokenData_getUserByToken_user> get serializer =>
      _$gGetUserByTokenDataGetUserByTokenUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserByTokenData_getUserByToken_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetUserByTokenData_getUserByToken_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserByTokenData_getUserByToken_user.serializer,
        json,
      );
}
