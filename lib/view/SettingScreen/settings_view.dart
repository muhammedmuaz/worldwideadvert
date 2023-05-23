import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:worldwideadverts/view/widgets/my_drawer_item.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff05BFDB),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                    const Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text('')
                  ],
                ),
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
            myDrawerItem(
              'Edit Profile',
              Icons.person,
            ),
            myDrawerItem(
              'Change Password',
              Icons.lock_outlined,
            ),
            myDrawerItem(
              'Invoices',
              Icons.attach_money,
            ),
            myDrawerItem(
              'Manage addresses',
              Icons.add_location,
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              'Select Layuot',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              title: const Text(
                'LTR',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                  value: 'BestTutorSite',
                  groupValue: 'groupValue',
                  onChanged: (Value) {}),
            ),
            const SizedBox(
              height: 30.0,
            ),
            myDrawerItem(
              'Help & Contact Us',
              Icons.phone_outlined,
            ),
            myDrawerItem(
              'Privacy policy',
              Icons.privacy_tip,
            ),
            myDrawerItem(
              'About Us',
              Icons.info_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
