// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:kidsflutter_app/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:kidsflutter_app/graphql/getUserProfile/__generated__/getUserProfile.ast.gql.dart'
    as _i5;
import 'package:kidsflutter_app/graphql/getUserProfile/__generated__/getUserProfile.data.gql.dart'
    as _i2;
import 'package:kidsflutter_app/graphql/getUserProfile/__generated__/getUserProfile.var.gql.dart'
    as _i3;

part 'getUserProfile.req.gql.g.dart';

abstract class GGetUserByTokenReq
    implements
        Built<GGetUserByTokenReq, GGetUserByTokenReqBuilder>,
        _i1.OperationRequest<_i2.GGetUserByTokenData, _i3.GGetUserByTokenVars> {
  GGetUserByTokenReq._();

  factory GGetUserByTokenReq(
          [void Function(GGetUserByTokenReqBuilder b) updates]) =
      _$GGetUserByTokenReq;

  static void _initializeBuilder(GGetUserByTokenReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetUserByToken',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetUserByTokenVars get vars;
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
  _i2.GGetUserByTokenData? Function(
    _i2.GGetUserByTokenData?,
    _i2.GGetUserByTokenData?,
  )? get updateResult;
  @override
  _i2.GGetUserByTokenData? get optimisticResponse;
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
  _i2.GGetUserByTokenData? parseData(Map<String, dynamic> json) =>
      _i2.GGetUserByTokenData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGetUserByTokenData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GGetUserByTokenData, _i3.GGetUserByTokenVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GGetUserByTokenReq> get serializer =>
      _$gGetUserByTokenReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetUserByTokenReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetUserByTokenReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetUserByTokenReq.serializer,
        json,
      );
}
