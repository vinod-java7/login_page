
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:login_page/repo/login_response.dart';



class LoginRegisterRepo {

  Future<LoginResponse> performLogin(String email,String password) async{

   final request = {
     "email":email,
    "password":password,
   };

   final jsonBody = json.encode(request);



   final response = await http.post(Uri.parse("https://grocerygarden.co/vinod/gg/login.php"),
    headers: {
          "Content-Type": "application/json",
    },
   
   body: jsonBody);

debugPrint("Response ${response.body}");

   if(response.statusCode == 200){
    
    final Map<String, dynamic> data = json.decode(response.body);

     return Future.value(LoginResponse.fromJson(data));
     

   }


return Future.value(LoginResponse(404, "Login failed",""));



  }
    

   Future <bool> performRegister(String userName,String email,String password) async {
 /**
  * "Username":"User"
    "email":"hai@mail.com",
    "password":"user password"
  */

   final request = {
    "username":userName,
     "email":email,
    "password":password,
   };

   final jsonBody = json.encode(request);



   final response = await http.post(Uri.parse("http://grocerygarden.co/vinod/gg/register.php"),
    headers: {
          "Content-Type": "application/json",
    },
   
   body: jsonBody);


   
    
    debugPrint("Response ${response.body}");

     


   return Future.value(response.statusCode == 200 || response.statusCode == 201);

   }



  
}