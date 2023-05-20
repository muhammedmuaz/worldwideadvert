import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:worldwideadverts/Screens/Categories/categories_view.dart';
import 'package:worldwideadverts/Screens/FavouriteList/favourite_list_view.dart';
import 'package:worldwideadverts/Screens/HomeScreen/homepage.dart';
import 'package:worldwideadverts/Screens/MyOrders/my_orders_view.dart';
import 'package:worldwideadverts/Screens/MyWallet/my_wallet_view.dart';
import 'package:worldwideadverts/Screens/RatingReview/rating_review_view.dart';
import 'package:worldwideadverts/Screens/SettingScreen/settings_view.dart';
import 'package:worldwideadverts/Screens/widgets/my_drawer_item.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff05BFDB),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.menu)),
                const SizedBox(
                  height: 25.0,
                ),
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/4709285/pexels-photo-4709285.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  radius: 30.0,
                ),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(const HomePage());
                },
                child: myDrawerItem("Home", Icons.home)),
            GestureDetector(
                onTap: () {
                  Get.to(const CategoriesPage());
                },
                child: myDrawerItem("Categories", Icons.category)),
            GestureDetector(
                onTap: () {
                  Get.to(const MyOrderView());
                },
                child: myDrawerItem("My Order", Icons.category)),
            GestureDetector(
                onTap: () {
                  Get.to(const FavouriteListPage());
                },
                child: myDrawerItem("Favourite List", Icons.favorite)),
            const Divider(
              height: 5,
              color: Colors.white,
            ),
            const SizedBox(
              height: 15.0,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(const RatingReviewView());
                },
                child: myDrawerItem("Rating & Review", Icons.home)),
            GestureDetector(
                onTap: () {
                  Get.to(const MyWalletView());
                },
                child: myDrawerItem("My Wallet", Icons.home)),
            GestureDetector(
                onTap: () {
                  Get.to(const SettingView());
                },
                child: myDrawerItem("Settings", Icons.home)),
            const Divider(
              color: Colors.white,
            ),
            const SizedBox(
              height: 15.0,
            ),
            myDrawerItem("Logout", Icons.home),
          ],
        ),
      ),
    );
  }
}
