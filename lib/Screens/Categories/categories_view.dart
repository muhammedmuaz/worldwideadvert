import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worldwideadverts/Screens/widgets/app_cotainer.dart';
import 'package:worldwideadverts/Screens/widgets/drawer.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(
                    builder: (BuildContext context) {
                      return IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        tooltip: MaterialLocalizations.of(context)
                            .openAppDrawerTooltip,
                      );
                    },
                  ),
                  const Text(
                    "Categories",
                    style: TextStyle(color: Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.location_on),
                    color: Colors.black,
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 42,
                    width: MediaQuery.of(context).size.width * 0.68,
                    child: TextField(
                        decoration: InputDecoration(
                      hintText: "Search..",
                      hintStyle: GoogleFonts.nunito(
                          textStyle: TextStyle(fontSize: 15)),
                      filled: true,
                      contentPadding: EdgeInsets.only(top: 0, left: 12),
                      fillColor: Color(0xffF2F2F2),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    )),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 42,
                    width: MediaQuery.of(context).size.width * 0.15,
                    color: const Color(0xff30E3DF),
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    myAppContiner("Events",
                        "https://images.pexels.com/photos/2833037/pexels-photo-2833037.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    const SizedBox(
                      width: 10,
                    ),
                    myAppContiner("Property",
                        "https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    const SizedBox(
                      width: 10,
                    ),
                    myAppContiner("Deals",
                        "https://images.pexels.com/photos/3184465/pexels-photo-3184465.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  ],
                ),
              )
            ],
          ),
        ),
        drawer: MyDrawer(),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blueGrey,
            // unselectedItemColor: AppColors.boldtextColour,
            // selectedLabelStyle: TextStyle(
            //     fontSize: 12,
            //     fontFamily: 'Gilroy-A',
            //     color: AppColors.greenColour),
            // unselectedLabelStyle: TextStyle(
            //     fontSize: 12,
            //     fontFamily: 'Gilroy-A',
            //     color: AppColors.boldtextColour),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.shop), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outlined), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: ''),
            ]),
      ),
    );
  }
}
