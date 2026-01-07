

import 'package:get/get.dart';
import 'package:usermanage_app/controllers/base_controller.dart';

var APP_NAME = "User Manage";

//API URL
const BASE_API_URL= "https://user-manage-liard.vercel.app/api";

//API ENDPOINTS
const getALLUsers = "$BASE_API_URL/users";

const createUserUrl = "$BASE_API_URL/createUser";

const deleteUserById = "$BASE_API_URL/deleteUser";

const updateUserById = "$BASE_API_URL/updateUser";

var themeValue = "auto".obs;

BaseController baseController = BaseController();