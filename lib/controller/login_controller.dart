import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:worldwideadverts/network/api.dart';
import 'package:worldwideadverts/view/HomeScreen/homepage.dart';

class loginController extends GetxController {
  bool isloggingin = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  login() {
    String url = "api/v1/auth/login";
    print(apiUrl + url);
    isloggingin = true;
    Api().postLogin(apiUrl + url,
        email: emailController.text, password: passwordController.text);
    isloggingin = false;
    Get.to(const HomePage());
  }
}
