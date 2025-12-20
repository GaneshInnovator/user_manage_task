import 'package:get/get.dart';
import 'package:ecompro_app/controllers/base_controller.dart';

import '../../config/client.dart';
import '../../model/product_model.dart';

class ProductController extends BaseController {
  final ApiClient api = ApiClient();

  var products = [].obs;
  var isLoading = false.obs;

  var page = 1;
  var sort = "createdAt:desc";
  var searchQuery = "";

  Future<List<ProductModel>> fetchProducts({
    int page = 1,
    String search = '',
  }) async {
    final response = await api.get(
      '/store/product',
      query: {
        'page': page,
        'limit': 20,
        'sort': 'createdAt:desc',
        'searchFields': 'name',
        'search': search,
      },
    );

    final List list = response.data['data'];
    return list.map((e) => ProductModel.fromJson(e)).toList();
  }

  void onSearch(String query) {
    searchQuery = query;
    fetchProducts();
  }

  void onSortChange(String value) {
    sort = value;
    fetchProducts();
  }
}
