import 'package:batch28_api_starter/response/loginresponse.dart';
import 'package:batch28_api_starter/utils/url.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../model/user.dart';
import 'httpservices.dart';

class UserAPI{
  Future<bool> registerUser(User user) async{
    bool isRegister = false;
    Response response;
    var url = baseUrl + registerUrl;
    var dio = HttpServices().getDioInstance();
    try{
      response = await dio.post(
        url,
         data: user.toJson(),
         );
         if (response.statusCode == 200){
           isRegister = true;
         }
    }
         catch(e){
           debugPrint(e.toString());
         }
         return isRegister;
    }

    Future<bool> login(String username, String password) async{
      bool isLogin = false;
      try{
        var url = baseUrl + loginUrl;
        var dio = HttpServices() .getDioInstance();

        var response = await dio.post(
          url,
          data:{
            "username": username,
            "password": password,
          },
        );
        if (response.statusCode == 200){
          LoginResponse loginResponse = LoginResponse.fromJson(response.data);
          token = loginResponse.token;
          isLogin = true;
        }
      }
      catch(e){
        debugPrint(e.toString());
      }
      return isLogin;

    }

}