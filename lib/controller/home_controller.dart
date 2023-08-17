import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:worldwideadverts/network/api.dart';

class HomeController extends GetxController {
  getApi() async {
    String url = "api/v1/listing?status=active&skip=0&limit=5&sort_type=asc";

    dynamic responce = Api().get(apiUrl + url);

    // print(ListingAdsModel.fromJson(responce).data!.items);
    // return ListingAdsModel.fromJson(responce).data!.items;
  }
}
