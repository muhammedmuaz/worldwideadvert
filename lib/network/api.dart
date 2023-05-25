import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:bot_toast/bot_toast.dart';
import 'package:get_storage/get_storage.dart';
import 'appException.dart';
import 'enviroment.dart';
import 'package:http/http.dart' as http;

final String baseUrl = Enviroment().config.baseUrl;
final String apiUrl = Enviroment().config.apiUrl;

class Api {
  var sp = GetStorage();

  Future<dynamic> get(String url, {fullUrl}) async {
    if (url != "" || fullUrl != "") {
      try {
        final response = await http.get(fullUrl);
        print(response.body);
        return response;
      } on SocketException {
        throw FetchDataException('No Internet connection');
      } catch (e) {
        BotToast.showText(text: e.toString());
      }
    }
  }

  // Post Login

  Future<dynamic> postLogin(
    url, {
    required email,
    required password,
  }) async {
    // Dio dio = Dio();
    // if (auth == false) {
    //   // print(sp.read ('token'));
    //   dio.options.headers['Authorization'] = "Bearer ${sp.read('token')}";
    // }

    try {
      Map<String, String> headers = {
        'Content-Type': 'application/json',
      };
      final body = jsonEncode({"email": email, "password": password});
      var response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: body,
      );
      if (jsonDecode(response.body)["Success"] == true) {
        return jsonDecode(response.body);
      } else {
        var parts = jsonDecode(response.body)['Message']
            .replaceAll(RegExp('<[^>]*>'), '');
        errorIcon(parts);
      }
    } on SocketException {
      throw FetchDataException('No Internet connection');
    } catch (e) {
      throw errorIcon(e.toString());
    }
  }

  // Error Icon

  errorIcon(message) async {
    Timer(Duration(seconds: 3), () {});
    if (message.runtimeType == String) {
      BotToast.showText(text: message);
    } else {
      BotToast.showText(text: message['message']);
    }
  }
}
