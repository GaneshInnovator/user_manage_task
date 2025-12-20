// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:kidsflutter_app/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:kidsflutter_app/graphql/pin_auth/__generated__/pin_auth.ast.gql.dart'
    as _i5;
import 'package:kidsflutter_app/graphql/pin_auth/__generated__/pin_auth.data.gql.dart'
    as _i2;
import 'package:kidsflutter_app/graphql/pin_auth/__generated__/pin_auth.var.gql.dart'
    as _i3;

part 'pin_auth.req.gql.g.dart';

abstract class GSetPinReq
    implements
        Built<GSetPinReq, GSetPinReqBuilder>,
        _i1.OperationRequest<_i2.GSetPinData, _i3.GSetPinVars> {
  GSetPinReq._();

  factory GSetPinReq([void Function(GSetPinReqBuilder b) updates]) =
      _$GSetPinReq;

  static void _initializeBuilder(GSetPinReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SetPin',
    )
    ..executeOnListen = true;

  @override
  _i3.GSetPinVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GSetPinData? Function(
    _i2.GSetPinData?,
    _i2.GSetPinData?,
  )? get updateResult;
  @override
  _i2.GSetPinData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GSetPinData? parseData(Map<String, dynamic> json) =>
      _i2.GSetPinData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GSetPinData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GSetPinData, _i3.GSetPinVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GSetPinReq> get serializer => _$gSetPinReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSetPinReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSetPinReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSetPinReq.serializer,
        json,
      );
}

abstract class GLoginWithPinReq
    implements
        Built<GLoginWithPinReq, GLoginWithPinReqBuilder>,
        _i1.OperationRequest<_i2.GLoginWithPinData, _i3.GLoginWithPinVars> {
  GLoginWithPinReq._();

  factory GLoginWithPinReq([void Function(GLoginWithPinReqBuilder b) updates]) =
      _$GLoginWithPinReq;

  static void _initializeBuilder(GLoginWithPinReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'LoginWithPin',
    )
    ..executeOnListen = true;

  @override
  _i3.GLoginWithPinVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GLoginWithPinData? Function(
    _i2.GLoginWithPinData?,
    _i2.GLoginWithPinData?,
  )? get updateResult;
  @override
  _i2.GLoginWithPinData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GLoginWithPinData? parseData(Map<String, dynamic> json) =>
      _i2.GLoginWithPinData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GLoginWithPinData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GLoginWithPinData, _i3.GLoginWithPinVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GLoginWithPinReq> get serializer =>
      _$gLoginWithPinReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GLoginWithPinReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginWithPinReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GLoginWithPinReq.serializer,
        json,
      );
}

abstract class GResetPinReq
    implements
        Built<GResetPinReq, GResetPinReqBuilder>,
        _i1.OperationRequest<_i2.GResetPinData, _i3.GResetPinVars> {
  GResetPinReq._();

  factory GResetPinReq([void Function(GResetPinReqBuilder b) updates]) =
      _$GResetPinReq;

  static void _initializeBuilder(GResetPinReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ResetPin',
    )
    ..executeOnListen = true;

  @override
  _i3.GResetPinVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GResetPinData? Function(
    _i2.GResetPinData?,
    _i2.GResetPinData?,
  )? get updateResult;
  @override
  _i2.GResetPinData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GResetPinData? parseData(Map<String, dynamic> json) =>
      _i2.GResetPinData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GResetPinData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GResetPinData, _i3.GResetPinVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GResetPinReq> get serializer => _$gResetPinReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GResetPinReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GResetPinReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GResetPinReq.serializer,
        json,
      );
}

abstract class GDisablePinReq
    implements
        Built<GDisablePinReq, GDisablePinReqBuilder>,
        _i1.OperationRequest<_i2.GDisablePinData, _i3.GDisablePinVars> {
  GDisablePinReq._();

  factory GDisablePinReq([void Function(GDisablePinReqBuilder b) updates]) =
      _$GDisablePinReq;

  static void _initializeBuilder(GDisablePinReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DisablePin',
    )
    ..executeOnListen = true;

  @override
  _i3.GDisablePinVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GDisablePinData? Function(
    _i2.GDisablePinData?,
    _i2.GDisablePinData?,
  )? get updateResult;
  @override
  _i2.GDisablePinData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GDisablePinData? parseData(Map<String, dynamic> json) =>
      _i2.GDisablePinData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GDisablePinData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GDisablePinData, _i3.GDisablePinVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GDisablePinReq> get serializer =>
      _$gDisablePinReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDisablePinReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDisablePinReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDisablePinReq.serializer,
        json,
      );
}

abstract class GActivatePinReq
    implements
        Built<GActivatePinReq, GActivatePinReqBuilder>,
        _i1.OperationRequest<_i2.GActivatePinData, _i3.GActivatePinVars> {
  GActivatePinReq._();

  factory GActivatePinReq([void Function(GActivatePinReqBuilder b) updates]) =
      _$GActivatePinReq;

  static void _initializeBuilder(GActivatePinReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ActivatePin',
    )
    ..executeOnListen = true;

  @override
  _i3.GActivatePinVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GActivatePinData? Function(
    _i2.GActivatePinData?,
    _i2.GActivatePinData?,
  )? get updateResult;
  @override
  _i2.GActivatePinData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GActivatePinData? parseData(Map<String, dynamic> json) =>
      _i2.GActivatePinData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GActivatePinData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GActivatePinData, _i3.GActivatePinVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GActivatePinReq> get serializer =>
      _$gActivatePinReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GActivatePinReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivatePinReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GActivatePinReq.serializer,
        json,
      );
}

abstract class GVerifyPinStatusReq
    implements
        Built<GVerifyPinStatusReq, GVerifyPinStatusReqBuilder>,
        _i1
        .OperationRequest<_i2.GVerifyPinStatusData, _i3.GVerifyPinStatusVars> {
  GVerifyPinStatusReq._();

  factory GVerifyPinStatusReq(
          [void Function(GVerifyPinStatusReqBuilder b) updates]) =
      _$GVerifyPinStatusReq;

  static void _initializeBuilder(GVerifyPinStatusReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'VerifyPinStatus',
    )
    ..executeOnListen = true;

  @override
  _i3.GVerifyPinStatusVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GVerifyPinStatusData? Function(
    _i2.GVerifyPinStatusData?,
    _i2.GVerifyPinStatusData?,
  )? get updateResult;
  @override
  _i2.GVerifyPinStatusData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GVerifyPinStatusData? parseData(Map<String, dynamic> json) =>
      _i2.GVerifyPinStatusData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GVerifyPinStatusData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GVerifyPinStatusData, _i3.GVerifyPinStatusVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GVerifyPinStatusReq> get serializer =>
      _$gVerifyPinStatusReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GVerifyPinStatusReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVerifyPinStatusReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GVerifyPinStatusReq.serializer,
        json,
      );
}
