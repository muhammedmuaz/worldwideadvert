import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:worldwideadverts/Screens/widgets/my_drawer_item.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(      
      child: Scaffold(
        backgroundColor:const Color(0xff05BFDB),
        body: ListView(
          padding:const  EdgeInsets.symmetric(horizontal: 12.0),
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: (){
                  Get.back();
                }, icon:const  Icon(Icons.menu)),
                const SizedBox(
                  height: 25.0,
                ),
                const CircleAvatar(
                  backgroundImage: NetworkImage("https://images.pexels.com/photos/4709285/pexels-photo-4709285.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  radius: 30.0,
                ),                           
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),

        myDrawerItem("Home", Icons.home),
        myDrawerItem("Categories", Icons.category),
        myDrawerItem("My Order", Icons.category),
        myDrawerItem("Favourite List", Icons.favorite),

        const Divider(height: 5,color: Colors.white,),
        const SizedBox(
              height: 15.0,
            ),
        

       myDrawerItem("Rating & Review", Icons.home),
        myDrawerItem("My Wallet", Icons.home),
        myDrawerItem("Settings", Icons.home),

        const Divider(color:  Colors.white,),
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

