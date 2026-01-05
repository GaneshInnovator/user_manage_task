import 'dart:convert';
import 'package:usermanage_app/constant.dart';
import 'package:http/http.dart' as http;
import '../../model/user_fetch_model.dart';

class HomeController {


  Future<List<UserFetchModel>> fetchAllUsers() async {
    try {

      final uri = Uri.parse(getALLUsers);

      print('Fetching products from: $uri');

      final response = await http.get(
        uri,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ).timeout(
        const Duration(seconds: 15),
        onTimeout: () {
          throw Exception('Request timeout');
        },
      );

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);

        List<dynamic> productsJson;

        if (jsonData is Map) {
          if (jsonData.containsKey('data')) {
            if (jsonData['data'] is List) {
              productsJson = jsonData['data'];
              print("productsJson: yes12: ${productsJson}");
            } else if (jsonData['data'] is Map &&
                jsonData['data'].containsKey('items')) {
              productsJson = jsonData['data']['items'];
            } else if (jsonData['data'] is Map &&
                jsonData['data'].containsKey('products')) {
              productsJson = jsonData['data']['products'];
            } else {
              productsJson = [];
            }
          } else if (jsonData.containsKey('products')) {
            productsJson = jsonData['products'];
          } else if (jsonData.containsKey('items')) {
            productsJson = jsonData['items'];
          } else {
            productsJson = [];
          }
        } else if (jsonData is List) {
          productsJson = jsonData;
        } else {
          productsJson = [];
        }

        return productsJson
            .map((json) => UserFetchModel.fromJson(json))
            .toList();
      } else if (response.statusCode == 500) {
        final errorData = json.decode(response.body);
        final errorMessage = errorData['message'] ?? 'Server error occurred';
        print('Server error: $errorMessage');
        throw Exception('Server is experiencing issues. Please try again later.');
      } else {
        throw Exception('Failed to load products: ${response.statusCode}');
      }
    } catch (e) {
      print('Error in fetchProducts: $e');
      rethrow;
    }
  }

  Future<List<UserFetchModel>> fetchProducts({String search = ''}) async {
    try {
      final queryParams = {
        'search': search,
      };

      final uri = Uri.parse('$BASE_API_URL/store/product').replace(
        queryParameters: queryParams,
      );

      print('Fetching products from: $uri');

      final response = await http.get(
        uri,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ).timeout(
        const Duration(seconds: 15),
        onTimeout: () {
          throw Exception('Request timeout');
        },
      );

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);

        List<dynamic> productsJson;

        if (jsonData is Map) {
          if (jsonData.containsKey('data')) {
            if (jsonData['data'] is List) {
              productsJson = jsonData['data'];
            } else if (jsonData['data'] is Map &&
                jsonData['data'].containsKey('items')) {
              productsJson = jsonData['data']['items'];
            } else if (jsonData['data'] is Map &&
                jsonData['data'].containsKey('products')) {
              productsJson = jsonData['data']['products'];
            } else {
              productsJson = [];
            }
          } else if (jsonData.containsKey('products')) {
            productsJson = jsonData['products'];
          } else if (jsonData.containsKey('items')) {
            productsJson = jsonData['items'];
          } else {
            productsJson = [];
          }
        } else if (jsonData is List) {
          productsJson = jsonData;
        } else {
          productsJson = [];
        }

        return productsJson
            .map((json) => UserFetchModel.fromJson(json))
            .toList();
      } else if (response.statusCode == 500) {
        final errorData = json.decode(response.body);
        final errorMessage = errorData['message'] ?? 'Server error occurred';
        print('Server error: $errorMessage');
        throw Exception('Server is experiencing issues. Please try again later.');
      } else {
        throw Exception('Failed to load products: ${response.statusCode}');
      }
    } catch (e) {
      print('Error in fetchProducts: $e');
      rethrow;
    }
  }

  Future<List<UserFetchModel>> searchProducts(String query) async {
    try {
      final uri = Uri.parse('$BASE_API_URL/store/search').replace(
        queryParameters: {
          'q': query,
        },
      );

      final response = await http.get(
        uri,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ).timeout(const Duration(seconds: 15));

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        List<dynamic> productsJson = jsonData['products'] ?? jsonData['data'] ?? [];

        return productsJson
            .map((json) => UserFetchModel.fromJson(json))
            .toList();
      } else {
        throw Exception('Search failed');
      }
    } catch (e) {
      print('Error in searchProducts: $e');
      return [];
    }
  }

}