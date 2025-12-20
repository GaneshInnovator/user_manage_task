// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder_serializers/gql_code_builder_serializers.dart'
    show OperationSerializer;
import 'package:kidsflutter_app/graphql/change_password/__generated__/changePassword.data.gql.dart'
    show
        GChangePasswordData,
        GChangePasswordData_changePassword,
        GChangePasswordData_changePassword_user;
import 'package:kidsflutter_app/graphql/change_password/__generated__/changePassword.req.gql.dart'
    show GChangePasswordReq;
import 'package:kidsflutter_app/graphql/change_password/__generated__/changePassword.var.gql.dart'
    show GChangePasswordVars;
import 'package:kidsflutter_app/graphql/forget_password/__generated__/forgetPassword.data.gql.dart'
    show
        GForgetPasswordData,
        GForgetPasswordData_forgetPassword,
        GForgetPasswordData_forgetPassword_user;
import 'package:kidsflutter_app/graphql/forget_password/__generated__/forgetPassword.req.gql.dart'
    show GForgetPasswordReq;
import 'package:kidsflutter_app/graphql/forget_password/__generated__/forgetPassword.var.gql.dart'
    show GForgetPasswordVars;
import 'package:kidsflutter_app/graphql/getUserProfile/__generated__/getUserProfile.data.gql.dart'
    show
        GGetUserByTokenData,
        GGetUserByTokenData_getUserByToken,
        GGetUserByTokenData_getUserByToken_user;
import 'package:kidsflutter_app/graphql/getUserProfile/__generated__/getUserProfile.req.gql.dart'
    show GGetUserByTokenReq;
import 'package:kidsflutter_app/graphql/getUserProfile/__generated__/getUserProfile.var.gql.dart'
    show GGetUserByTokenVars;
import 'package:kidsflutter_app/graphql/pin_auth/__generated__/pin_auth.data.gql.dart'
    show
        GActivatePinData,
        GActivatePinData_activatePin,
        GActivatePinData_activatePin_user,
        GDisablePinData,
        GDisablePinData_disablePin,
        GDisablePinData_disablePin_user,
        GLoginWithPinData,
        GLoginWithPinData_loginWithPin,
        GLoginWithPinData_loginWithPin_user,
        GResetPinData,
        GResetPinData_resetPin,
        GResetPinData_resetPin_user,
        GSetPinData,
        GSetPinData_setPin,
        GSetPinData_setPin_user,
        GVerifyPinStatusData,
        GVerifyPinStatusData_verifyPinStatus;
import 'package:kidsflutter_app/graphql/pin_auth/__generated__/pin_auth.req.gql.dart'
    show
        GActivatePinReq,
        GDisablePinReq,
        GLoginWithPinReq,
        GResetPinReq,
        GSetPinReq,
        GVerifyPinStatusReq;
import 'package:kidsflutter_app/graphql/pin_auth/__generated__/pin_auth.var.gql.dart'
    show
        GActivatePinVars,
        GDisablePinVars,
        GLoginWithPinVars,
        GResetPinVars,
        GSetPinVars,
        GVerifyPinStatusVars;
import 'package:kidsflutter_app/graphql/user_login/__generated__/userLogin.data.gql.dart'
    show
        GLoginUserData,
        GLoginUserData_loginUser,
        GLoginUserData_loginUser_user;
import 'package:kidsflutter_app/graphql/user_login/__generated__/userLogin.req.gql.dart'
    show GLoginUserReq;
import 'package:kidsflutter_app/graphql/user_login/__generated__/userLogin.var.gql.dart'
    show GLoginUserVars;
import 'package:kidsflutter_app/graphql/user_signup/__generated__/userRegister.data.gql.dart'
    show
        GRegisterUserData,
        GRegisterUserData_registerUser,
        GRegisterUserData_registerUser_user;
import 'package:kidsflutter_app/graphql/user_signup/__generated__/userRegister.req.gql.dart'
    show GRegisterUserReq;
import 'package:kidsflutter_app/graphql/user_signup/__generated__/userRegister.var.gql.dart'
    show GRegisterUserVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GActivatePinData,
  GActivatePinData_activatePin,
  GActivatePinData_activatePin_user,
  GActivatePinReq,
  GActivatePinVars,
  GChangePasswordData,
  GChangePasswordData_changePassword,
  GChangePasswordData_changePassword_user,
  GChangePasswordReq,
  GChangePasswordVars,
  GDisablePinData,
  GDisablePinData_disablePin,
  GDisablePinData_disablePin_user,
  GDisablePinReq,
  GDisablePinVars,
  GForgetPasswordData,
  GForgetPasswordData_forgetPassword,
  GForgetPasswordData_forgetPassword_user,
  GForgetPasswordReq,
  GForgetPasswordVars,
  GGetUserByTokenData,
  GGetUserByTokenData_getUserByToken,
  GGetUserByTokenData_getUserByToken_user,
  GGetUserByTokenReq,
  GGetUserByTokenVars,
  GLoginUserData,
  GLoginUserData_loginUser,
  GLoginUserData_loginUser_user,
  GLoginUserReq,
  GLoginUserVars,
  GLoginWithPinData,
  GLoginWithPinData_loginWithPin,
  GLoginWithPinData_loginWithPin_user,
  GLoginWithPinReq,
  GLoginWithPinVars,
  GRegisterUserData,
  GRegisterUserData_registerUser,
  GRegisterUserData_registerUser_user,
  GRegisterUserReq,
  GRegisterUserVars,
  GResetPinData,
  GResetPinData_resetPin,
  GResetPinData_resetPin_user,
  GResetPinReq,
  GResetPinVars,
  GSetPinData,
  GSetPinData_setPin,
  GSetPinData_setPin_user,
  GSetPinReq,
  GSetPinVars,
  GVerifyPinStatusData,
  GVerifyPinStatusData_verifyPinStatus,
  GVerifyPinStatusReq,
  GVerifyPinStatusVars,
])
final Serializers serializers = _serializersBuilder.build();
