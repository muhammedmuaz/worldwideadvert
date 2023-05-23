import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worldwideadverts/Screens/Categories/categories_view.dart';

import 'package:worldwideadverts/Screens/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                    "Home",
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
                    color: const Color(0xff6780A1),
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    enableInfiniteScroll: true,
                    viewportFraction: 1,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                  ),
                  items: [1, 2, 3].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1680180645260-cf8fc26789c7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 6,
                    width: 40,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 6),
                  Container(
                    height: 6,
                    width: 40,
                    color: const Color(0xffB4B4B4),
                  ),
                  const SizedBox(width: 6),
                  Container(
                    height: 6,
                    width: 40,
                    color: const Color(0xffB4B4B4),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: GestureDetector(
                  onTap: () {
                    Get.to(const CategoriesPage());
                  },
                  child: Text(
                    "Categories",
                    style: GoogleFonts.playfairDisplay(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 38,
                        width: 100,
                        alignment: Alignment.center,
                        color: const Color(0xff6780A1),
                        child: Text(
                          "Events",
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(color: Colors.white)),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 38,
                        width: 100,
                        alignment: Alignment.center,
                        color: const Color(0xffF5F5F5),
                        child: Text(
                          "Property",
                          style: GoogleFonts.nunito(
                              textStyle:
                                  const TextStyle(color: Color(0xffB4B4B4))),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 38,
                        width: 100,
                        alignment: Alignment.center,
                        color: const Color(0xffF5F5F5),
                        child: Text(
                          "Deals",
                          style: GoogleFonts.nunito(
                              textStyle:
                                  const TextStyle(color: Color(0xffB4B4B4))),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 38,
                        width: 100,
                        alignment: Alignment.center,
                        color: const Color(0xffF5F5F5),
                        child: Text(
                          "Vehicles",
                          style: GoogleFonts.nunito(
                              textStyle:
                                  const TextStyle(color: Color(0xffB4B4B4))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  "Popular Upcoming Events",
                  style: GoogleFonts.playfairDisplay(
                      textStyle: const TextStyle(
                    fontSize: 21,
                  )),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  "Keeping up to date",
                  style: GoogleFonts.nunito(
                      textStyle: const TextStyle(
                          fontSize: 14, color: Color(0xffB4B4B4))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Card(
                      elevation: 1,
                      color: Colors.white,
                      child: Container(
                        height: 189,
                        width: 150,
                        decoration: BoxDecoration(
                            // color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 126,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://worldwideadverts.info/uploads/images/listings/6206021607595161674.jpg'))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, top: 4.0),
                              child: Text(
                                "VOXOID",
                                style: GoogleFonts.playfairDisplay(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    "California...",
                                    style: GoogleFonts.playfairDisplay(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff134E00)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Card(
                      elevation: 1,
                      color: Colors.white,
                      child: Container(
                        height: 189,
                        width: 150,
                        decoration: BoxDecoration(
                            // color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 126,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://worldwideadverts.info/uploads/images/listings/6206021607595161674.jpg'))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, top: 4.0),
                              child: Text(
                                "VOXOID",
                                style: GoogleFonts.playfairDisplay(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    "California...",
                                    style: GoogleFonts.playfairDisplay(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff134E00)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Card(
                      elevation: 1,
                      color: Colors.white,
                      child: Container(
                        height: 189,
                        width: 150,
                        decoration: BoxDecoration(
                            // color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 126,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://worldwideadverts.info/uploads/images/listings/6206021607595161674.jpg'))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, top: 4.0),
                              child: Text(
                                "VOXOID",
                                style: GoogleFonts.playfairDisplay(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    "California...",
                                    style: GoogleFonts.playfairDisplay(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff134E00)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
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
