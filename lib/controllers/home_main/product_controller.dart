import 'package:get/get.dart';
import 'package:ecompro_app/controllers/base_controller.dart';

import '../../config/client.dart';

class ProductController extends BaseController {
  final ApiClient api = ApiClient();

  var products = [].obs;
  var isLoading = false.obs;

  var page = 1;
  var sort = "createdAt:desc";
  var searchQuery = "";

  Future<void> fetchProducts({bool reset = false}) async {
    if (reset) {
      page = 1;
      products.clear();
    }

    isLoading.value = true;

    final response = await api.get(
      "/admin/products",
      query: {
        "page": page,
        "limit": 20,
        "sort": sort,
        "searchFields": "name",
        "search": searchQuery,
      },
    );

    products.addAll(response.data['data']);
    isLoading.value = false;
  }

  void onSearch(String query) {
    searchQuery = query;
    fetchProducts(reset: true);
  }

  void onSortChange(String value) {
    sort = value;
    fetchProducts(reset: true);
  }
}
