// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:kidsflutter_app/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'pin_auth.data.gql.g.dart';

abstract class GSetPinData implements Built<GSetPinData, GSetPinDataBuilder> {
  GSetPinData._();

  factory GSetPinData([void Function(GSetPinDataBuilder b) updates]) =
      _$GSetPinData;

  static void _initializeBuilder(GSetPinDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSetPinData_setPin get setPin;
  static Serializer<GSetPinData> get serializer => _$gSetPinDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSetPinData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSetPinData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSetPinData.serializer,
        json,
      );
}

abstract class GSetPinData_setPin
    implements Built<GSetPinData_setPin, GSetPinData_setPinBuilder> {
  GSetPinData_setPin._();

  factory GSetPinData_setPin(
          [void Function(GSetPinData_setPinBuilder b) updates]) =
      _$GSetPinData_setPin;

  static void _initializeBuilder(GSetPinData_setPinBuilder b) =>
      b..G__typename = 'UserResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get status;
  String get message;
  GSetPinData_setPin_user? get user;
  static Serializer<GSetPinData_setPin> get serializer =>
      _$gSetPinDataSetPinSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSetPinData_setPin.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSetPinData_setPin? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSetPinData_setPin.serializer,
        json,
      );
}

abstract class GSetPinData_setPin_user
    implements Built<GSetPinData_setPin_user, GSetPinData_setPin_userBuilder> {
  GSetPinData_setPin_user._();

  factory GSetPinData_setPin_user(
          [void Function(GSetPinData_setPin_userBuilder b) updates]) =
      _$GSetPinData_setPin_user;

  static void _initializeBuilder(GSetPinData_setPin_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get auth;
  bool? get setUserPin;
  static Serializer<GSetPinData_setPin_user> get serializer =>
      _$gSetPinDataSetPinUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSetPinData_setPin_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSetPinData_setPin_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSetPinData_setPin_user.serializer,
        json,
      );
}

abstract class GLoginWithPinData
    implements Built<GLoginWithPinData, GLoginWithPinDataBuilder> {
  GLoginWithPinData._();

  factory GLoginWithPinData(
          [void Function(GLoginWithPinDataBuilder b) updates]) =
      _$GLoginWithPinData;

  static void _initializeBuilder(GLoginWithPinDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLoginWithPinData_loginWithPin get loginWithPin;
  static Serializer<GLoginWithPinData> get serializer =>
      _$gLoginWithPinDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginWithPinData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginWithPinData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginWithPinData.serializer,
        json,
      );
}

abstract class GLoginWithPinData_loginWithPin
    implements
        Built<GLoginWithPinData_loginWithPin,
            GLoginWithPinData_loginWithPinBuilder> {
  GLoginWithPinData_loginWithPin._();

  factory GLoginWithPinData_loginWithPin(
          [void Function(GLoginWithPinData_loginWithPinBuilder b) updates]) =
      _$GLoginWithPinData_loginWithPin;

  static void _initializeBuilder(GLoginWithPinData_loginWithPinBuilder b) =>
      b..G__typename = 'UserResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get status;
  String get message;
  GLoginWithPinData_loginWithPin_user? get user;
  static Serializer<GLoginWithPinData_loginWithPin> get serializer =>
      _$gLoginWithPinDataLoginWithPinSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginWithPinData_loginWithPin.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginWithPinData_loginWithPin? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginWithPinData_loginWithPin.serializer,
        json,
      );
}

abstract class GLoginWithPinData_loginWithPin_user
    implements
        Built<GLoginWithPinData_loginWithPin_user,
            GLoginWithPinData_loginWithPin_userBuilder> {
  GLoginWithPinData_loginWithPin_user._();

  factory GLoginWithPinData_loginWithPin_user(
      [void Function(GLoginWithPinData_loginWithPin_userBuilder b)
          updates]) = _$GLoginWithPinData_loginWithPin_user;

  static void _initializeBuilder(
          GLoginWithPinData_loginWithPin_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get auth;
  static Serializer<GLoginWithPinData_loginWithPin_user> get serializer =>
      _$gLoginWithPinDataLoginWithPinUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginWithPinData_loginWithPin_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginWithPinData_loginWithPin_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginWithPinData_loginWithPin_user.serializer,
        json,
      );
}

abstract class GResetPinData
    implements Built<GResetPinData, GResetPinDataBuilder> {
  GResetPinData._();

  factory GResetPinData([void Function(GResetPinDataBuilder b) updates]) =
      _$GResetPinData;

  static void _initializeBuilder(GResetPinDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GResetPinData_resetPin get resetPin;
  static Serializer<GResetPinData> get serializer => _$gResetPinDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GResetPinData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GResetPinData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GResetPinData.serializer,
        json,
      );
}

abstract class GResetPinData_resetPin
    implements Built<GResetPinData_resetPin, GResetPinData_resetPinBuilder> {
  GResetPinData_resetPin._();

  factory GResetPinData_resetPin(
          [void Function(GResetPinData_resetPinBuilder b) updates]) =
      _$GResetPinData_resetPin;

  static void _initializeBuilder(GResetPinData_resetPinBuilder b) =>
      b..G__typename = 'UserResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get status;
  String get message;
  GResetPinData_resetPin_user? get user;
  static Serializer<GResetPinData_resetPin> get serializer =>
      _$gResetPinDataResetPinSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GResetPinData_resetPin.serializer,
        this,
      ) as Map<String, dynamic>);

  static GResetPinData_resetPin? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GResetPinData_resetPin.serializer,
        json,
      );
}

abstract class GResetPinData_resetPin_user
    implements
        Built<GResetPinData_resetPin_user, GResetPinData_resetPin_userBuilder> {
  GResetPinData_resetPin_user._();

  factory GResetPinData_resetPin_user(
          [void Function(GResetPinData_resetPin_userBuilder b) updates]) =
      _$GResetPinData_resetPin_user;

  static void _initializeBuilder(GResetPinData_resetPin_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get auth;
  static Serializer<GResetPinData_resetPin_user> get serializer =>
      _$gResetPinDataResetPinUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GResetPinData_resetPin_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GResetPinData_resetPin_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GResetPinData_resetPin_user.serializer,
        json,
      );
}

abstract class GDisablePinData
    implements Built<GDisablePinData, GDisablePinDataBuilder> {
  GDisablePinData._();

  factory GDisablePinData([void Function(GDisablePinDataBuilder b) updates]) =
      _$GDisablePinData;

  static void _initializeBuilder(GDisablePinDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDisablePinData_disablePin get disablePin;
  static Serializer<GDisablePinData> get serializer =>
      _$gDisablePinDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDisablePinData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDisablePinData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDisablePinData.serializer,
        json,
      );
}

abstract class GDisablePinData_disablePin
    implements
        Built<GDisablePinData_disablePin, GDisablePinData_disablePinBuilder> {
  GDisablePinData_disablePin._();

  factory GDisablePinData_disablePin(
          [void Function(GDisablePinData_disablePinBuilder b) updates]) =
      _$GDisablePinData_disablePin;

  static void _initializeBuilder(GDisablePinData_disablePinBuilder b) =>
      b..G__typename = 'UserResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get status;
  String get message;
  GDisablePinData_disablePin_user? get user;
  static Serializer<GDisablePinData_disablePin> get serializer =>
      _$gDisablePinDataDisablePinSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDisablePinData_disablePin.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDisablePinData_disablePin? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDisablePinData_disablePin.serializer,
        json,
      );
}

abstract class GDisablePinData_disablePin_user
    implements
        Built<GDisablePinData_disablePin_user,
            GDisablePinData_disablePin_userBuilder> {
  GDisablePinData_disablePin_user._();

  factory GDisablePinData_disablePin_user(
          [void Function(GDisablePinData_disablePin_userBuilder b) updates]) =
      _$GDisablePinData_disablePin_user;

  static void _initializeBuilder(GDisablePinData_disablePin_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get auth;
  bool? get setUserPin;
  static Serializer<GDisablePinData_disablePin_user> get serializer =>
      _$gDisablePinDataDisablePinUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDisablePinData_disablePin_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDisablePinData_disablePin_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDisablePinData_disablePin_user.serializer,
        json,
      );
}

abstract class GActivatePinData
    implements Built<GActivatePinData, GActivatePinDataBuilder> {
  GActivatePinData._();

  factory GActivatePinData([void Function(GActivatePinDataBuilder b) updates]) =
      _$GActivatePinData;

  static void _initializeBuilder(GActivatePinDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GActivatePinData_activatePin get activatePin;
  static Serializer<GActivatePinData> get serializer =>
      _$gActivatePinDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivatePinData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivatePinData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivatePinData.serializer,
        json,
      );
}

abstract class GActivatePinData_activatePin
    implements
        Built<GActivatePinData_activatePin,
            GActivatePinData_activatePinBuilder> {
  GActivatePinData_activatePin._();

  factory GActivatePinData_activatePin(
          [void Function(GActivatePinData_activatePinBuilder b) updates]) =
      _$GActivatePinData_activatePin;

  static void _initializeBuilder(GActivatePinData_activatePinBuilder b) =>
      b..G__typename = 'UserResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get status;
  String get message;
  GActivatePinData_activatePin_user? get user;
  static Serializer<GActivatePinData_activatePin> get serializer =>
      _$gActivatePinDataActivatePinSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivatePinData_activatePin.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivatePinData_activatePin? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivatePinData_activatePin.serializer,
        json,
      );
}

abstract class GActivatePinData_activatePin_user
    implements
        Built<GActivatePinData_activatePin_user,
            GActivatePinData_activatePin_userBuilder> {
  GActivatePinData_activatePin_user._();

  factory GActivatePinData_activatePin_user(
          [void Function(GActivatePinData_activatePin_userBuilder b) updates]) =
      _$GActivatePinData_activatePin_user;

  static void _initializeBuilder(GActivatePinData_activatePin_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get auth;
  bool? get setUserPin;
  static Serializer<GActivatePinData_activatePin_user> get serializer =>
      _$gActivatePinDataActivatePinUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivatePinData_activatePin_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivatePinData_activatePin_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivatePinData_activatePin_user.serializer,
        json,
      );
}

abstract class GVerifyPinStatusData
    implements Built<GVerifyPinStatusData, GVerifyPinStatusDataBuilder> {
  GVerifyPinStatusData._();

  factory GVerifyPinStatusData(
          [void Function(GVerifyPinStatusDataBuilder b) updates]) =
      _$GVerifyPinStatusData;

  static void _initializeBuilder(GVerifyPinStatusDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GVerifyPinStatusData_verifyPinStatus get verifyPinStatus;
  static Serializer<GVerifyPinStatusData> get serializer =>
      _$gVerifyPinStatusDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVerifyPinStatusData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVerifyPinStatusData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVerifyPinStatusData.serializer,
        json,
      );
}

abstract class GVerifyPinStatusData_verifyPinStatus
    implements
        Built<GVerifyPinStatusData_verifyPinStatus,
            GVerifyPinStatusData_verifyPinStatusBuilder> {
  GVerifyPinStatusData_verifyPinStatus._();

  factory GVerifyPinStatusData_verifyPinStatus(
      [void Function(GVerifyPinStatusData_verifyPinStatusBuilder b)
          updates]) = _$GVerifyPinStatusData_verifyPinStatus;

  static void _initializeBuilder(
          GVerifyPinStatusData_verifyPinStatusBuilder b) =>
      b..G__typename = 'PinStatusResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get status;
  String get message;
  String get pinStatus;
  bool? get setUserPin;
  static Serializer<GVerifyPinStatusData_verifyPinStatus> get serializer =>
      _$gVerifyPinStatusDataVerifyPinStatusSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVerifyPinStatusData_verifyPinStatus.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVerifyPinStatusData_verifyPinStatus? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVerifyPinStatusData_verifyPinStatus.serializer,
        json,
      );
}
