import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worldwideadverts/Screens/widgets/app_container1.dart';
import 'package:worldwideadverts/Screens/widgets/app_cotainer.dart';
import 'package:worldwideadverts/Screens/widgets/drawer.dart';

class FavouriteListPage extends StatelessWidget {
  const FavouriteListPage({super.key});

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
                    "Favourite",
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Favourite List',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    Text(
                      'Keeping up to date',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       myAppContiner1("JEMBI HEALTH SYSTEMS", "South Africa",
              //           "https://images.pexels.com/photos/15252557/pexels-photo-15252557/free-photo-of-man-taking-photo-on-street.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              //     ],
              //   ),
              // ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1 / 2,
                children: [
                  myAppContiner1("JEMBI HEALTH SYSTEMS", "Istanbul, Turkey",
                      "https://images.pexels.com/photos/1549326/pexels-photo-1549326.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  myAppContiner1("JEMBI HEALTH SYSTEMS", "South Africa",
                      "https://images.pexels.com/photos/323682/pexels-photo-323682.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  myAppContiner1("JEMBI HEALTH SYSTEMS", "South Africa",
                      "https://images.pexels.com/photos/1624487/pexels-photo-1624487.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  myAppContiner1("JEMBI HEALTH SYSTEMS", "South Africa",
                      "https://images.pexels.com/photos/15252557/pexels-photo-15252557/free-photo-of-man-taking-photo-on-street.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  myAppContiner1("JEMBI HEALTH SYSTEMS", "South Africa",
                      "https://images.pexels.com/photos/15252557/pexels-photo-15252557/free-photo-of-man-taking-photo-on-street.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  myAppContiner1("JEMBI HEALTH SYSTEMS", "South Africa",
                      "https://images.pexels.com/photos/15252557/pexels-photo-15252557/free-photo-of-man-taking-photo-on-street.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ],
              ))
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
