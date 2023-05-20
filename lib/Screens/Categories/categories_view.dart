import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worldwideadverts/Screens/widgets/app_container1.dart';
import 'package:worldwideadverts/Screens/widgets/app_cotainer.dart';
import 'package:worldwideadverts/Screens/widgets/drawer.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> categoriesItems = [
      {
        "Image":
            "https://images.pexels.com/photos/2833037/pexels-photo-2833037.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "title": "Events"
      },
      {
        "Image":
            "https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "title": "Deals"
      },
      {
        "Image":
            "https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "title": "Property"
      },
      {
        "Image":
            "https://images.pexels.com/photos/3184465/pexels-photo-3184465.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "title": "Vehicles"
      },
      {
        "Image":
            "https://images.pexels.com/photos/164634/pexels-photo-164634.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "title": "Resort"
      },
      {
        "Image":
            "https://images.pexels.com/photos/580613/pexels-photo-580613.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "title": "Jobs"
      },
      {
        "Image":
            "https://images.pexels.com/photos/3184465/pexels-photo-3184465.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "title": "Vehicles"
      },
      {
        "Image":
            "https://images.pexels.com/photos/164634/pexels-photo-164634.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "title": "Resort"
      },
      {
        "Image":
            "https://images.pexels.com/photos/580613/pexels-photo-580613.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "title": "Jobs"
      }
    ];

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
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      mainAxisExtent: 200.0),
                  itemCount: categoriesItems.length,
                  itemBuilder: (_, index) {
                    return myAppContiner("${categoriesItems.elementAt(index)["title"]}",
                        "${categoriesItems.elementAt(index)["Image"]}");
                  },
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
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outlined), label: 'Favourite'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: 'Shopping'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ]),
      ),
    );
  }
}
