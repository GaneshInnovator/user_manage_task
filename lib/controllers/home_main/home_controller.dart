import 'dart:convert';
import 'package:get/get.dart';
import 'package:usermanage_app/constant.dart';
import 'package:http/http.dart' as http;
import '../../model/user_fetch_model.dart';
import '../base_controller.dart';

class HomeController extends BaseController{

  var users = <UserModel>[].obs;
  var hasMore = true.obs;
  var userId = "".obs;
  var userProfile = Rxn<UserModel>();

  int page = 1;
  final int pageSize = 10;

  var retry = false;

  void fetchUsersModel() async {
    if ((isLoading.value || !hasMore.value) && !retry) return;

    retry = false;

    isLoading.value = true;

    final newUsers = await fetchUsers(
      page: page,
      pageSize: pageSize,
    );

    if (newUsers.length < pageSize) {
      hasMore.value = false;
    }

    users.addAll(newUsers);
    page++;
    isLoading.value = false;
  }

  void fetchUsersProfile() async {
    isLoading.value = true;

    userProfile.value = await fetchUserById(
      userId.value,
    );

    print("userProfile.value: ${userProfile.value} ${userId.value}");

    isLoading.value = false;
  }


  Future<List<UserModel>> fetchUsers({
    required int page,
    required int pageSize,
  }) async {
    final url =
        '$getALLUsers?pageSize=$pageSize&currentPage=$page';

    final res =await http.get(Uri.parse(url));

    if (res.statusCode == 200) {
      final List data = json.decode(res.body)['data'];
      return data.map((e) => UserModel.fromJson(e)).toList();
    }
    throw Exception('Failed to load users');
  }

  Future<UserModel> fetchUserById(String id) async {

    final res = await http.get(Uri.parse('$getALLUsers?id=$id'));
    print("resbody: ${res.body}");

    if (res.statusCode == 200) {
      return UserModel.fromJson(json.decode(res.body));
    }
    throw Exception('User not found');
  }

}