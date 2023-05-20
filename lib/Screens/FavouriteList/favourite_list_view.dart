import 'package:flutter/material.dart';
import 'package:worldwideadverts/Screens/widgets/app_container1.dart';
import 'package:worldwideadverts/Screens/widgets/drawer.dart';

class FavouriteListPage extends StatelessWidget {
  const FavouriteListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> favouriteItems = [
      {
        "Image":
            "https://images.pexels.com/photos/1549326/pexels-photo-1549326.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "title": "JEMBI HEALTH SYSTEMS",
        "label": "Istanbul, Turkey"
      },
      {
        "Image":
            "https://images.pexels.com/photos/323682/pexels-photo-323682.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "title": "JEMBI HEALTH SYSTEMS",
        "label": "Istanbul, Turkey"
      },
      {
        "Image":
            "https://images.pexels.com/photos/1624487/pexels-photo-1624487.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "title": "JEMBI HEALTH SYSTEMS",
        "label": "Istanbul, Turkey"
      },
      {
        "Image":
            "https://images.pexels.com/photos/15252557/pexels-photo-15252557/free-photo-of-man-taking-photo-on-street.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "title": "JEMBI HEALTH SYSTEMS",
        "label": "Istanbul, Turkey"
      },
      {
        "Image":
            "https://images.pexels.com/photos/1549326/pexels-photo-1549326.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "title": "JEMBI HEALTH SYSTEMS",
        "label": "Istanbul, Turkey"
      },
      {
        "Image":
            "https://images.pexels.com/photos/323682/pexels-photo-323682.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "title": "JEMBI HEALTH SYSTEMS",
        "label": "Istanbul, Turkey"
      },
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
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                    mainAxisExtent: 250.0,
                  ),
                  itemCount: favouriteItems.length,
                  itemBuilder: (_, index) {
                    return myAppContiner1(
                        "${favouriteItems.elementAt(index)["title"]}",
                        "${favouriteItems.elementAt(index)["label"]}",
                        "${favouriteItems.elementAt(index)["Image"]}");
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
