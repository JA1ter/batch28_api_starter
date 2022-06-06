import 'package:batch28_api_starter/api/userapi.dart';

import '../model/user.dart';

class UserRepo{
  Future<bool>registerUser(User user) async{
    return await UserAPI().registerUser(user);
  }
  Future<bool>login(String username, String password) {
    return  UserAPI().login(username, password);
  }

}