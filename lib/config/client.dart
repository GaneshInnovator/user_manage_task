import 'dart:convert';

import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidsflutter_app/constant.dart';
import 'package:gql_http_link/gql_http_link.dart';

import '../pref/app_preference.dart';

final AppPreference appPreference = Get.find();

HttpLink link = HttpLink(GRAPHQL_URL,
    defaultHeaders: {"auth": appPreference.authToken ?? ""});

class FerryLoggerClient extends Client {
  FerryLoggerClient({Key? key}) : super(link: link);
  static Client? client;

  static Stream<OperationResponse<dynamic, dynamic>> makeRequest(OperationRequest<dynamic, dynamic> request) {
    FerryLoggerClient.client?.requestController.close();
    client = Client(link: link, defaultFetchPolicies: {
      OperationType.query: FetchPolicy.NetworkOnly,
      OperationType.mutation: FetchPolicy.NetworkOnly,
      OperationType.subscription: FetchPolicy.NetworkOnly
    });
    const JsonEncoder _encoder = JsonEncoder.withIndent('');
    var response = client?.request(request);
    Get.printInfo(info: "Response : " + response.toString());
    response?.listen((response) {
      Get.printInfo(info: _encoder.convert(response.data));
    }, onError: (error) {
      Get.printInfo(info: "Getting Error" + error);
    });
    return response!;
  }
}
