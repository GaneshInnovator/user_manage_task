import 'package:dio/dio.dart';
import 'package:usermanage_app/constant.dart';
import 'package:hive/hive.dart';

class ApiClient {
  static final ApiClient _instance = ApiClient._internal();
  factory ApiClient() => _instance;

  late Dio dio;

  ApiClient._internal() {
    dio = Dio(
      BaseOptions(
        baseUrl: BASE_URL,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        responseType: ResponseType.json,
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );

    _addInterceptors();
  }

  void _addInterceptors() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await _getToken();
          print("token: $token");
          if (token != null) {
            options.headers["Authorization"] = "Bearer $token";
          }
          return handler.next(options);
        },

        onResponse: (response, handler) {
          return handler.next(response);
        },

        onError: (DioException error, handler) {
          return handler.next(error);
        },
      ),
    );

    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    );
  }


  Future<Response> get(
      String path, {
        Map<String, dynamic>? query,
      }) async {
    print("path: ${path} ${query}");
    return dio.get(path, queryParameters: query);
  }

  Future<Response> post(
      String path, {
        dynamic data,
        Map<String, dynamic>? query,
      }) async {
    return dio.post(path, data: data, queryParameters: query);
  }

  Future<Response> put(
      String path, {
        dynamic data,
      }) async {
    return dio.put(path, data: data);
  }

  Future<Response> delete(
      String path, {
        dynamic data,
      }) async {
    return dio.delete(path, data: data);
  }


  Future<String?> _getToken() async {
    return null;
  }

}
