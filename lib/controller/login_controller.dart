import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:worldwideadverts/network/api.dart';
import 'package:worldwideadverts/view/HomeScreen/homepage.dart';

class LoginController extends GetxController {
  bool isloggingin = false;
  TextEditingController emailController =
      TextEditingController(text: "rizky@gmail.com");
  TextEditingController passwordController =
      TextEditingController(text: "asdasd");

  login() async {
    String url = "api/v1/auth/login";
    print(apiUrl + url);
    isloggingin = true;
    update();
    var response = await Api().postLogin(apiUrl + url,
        email: emailController.text, password: passwordController.text);
    if (response != null) {
      print(response);
      print("its null");
    }
    isloggingin = false;
    update();
    // Get.to(const HomePage());
  }
}
