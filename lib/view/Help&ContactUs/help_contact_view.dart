import 'package:flutter/material.dart';
import 'package:worldwideadverts/view/widgets/app_card.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});
  final String heading1 =
      "World Wide Adverts is a UK registered business with the company number 13241715 .We are a digital marketing company that offers a platform to grow business and brands.Our aim is to offer global  market place for all by allowing all businesses big ,small and individual  to advertise thier products and services.It is our goal to engage buisnesses and customers in this global marketplace.We aim to make it easier for everyone around the world to have access to as many services and products as possible within the legal parameters of their sovereignty (country )and the world (other countries).We are here to offer a better and bigger market for trade.Our services cater for, all buyers, sellers, service providers, events planners and much more.We aim to be the biggest one-stop marketplace for as many services and products as possible.We are here to help businesses grow thier brands and services.";
  final String heading2 =
      "We are here to help businesses achieve  goals of growing services and products beyond borders.Our endeavor is to see businesses and trade grow between nations and continents in the hope of improving development and technology across the world.World wide adverts Ltd (worldwideadverts.org) is an open market for legal products and services that can be freely traded between individuals, companies or between companies and individuals.We are here to serve and assist business all business and investments grow through advertising and marketing to a broader market.We are here help you expand your market, let us grow with you.Your success is our success and business our business together we will excel";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Contact Us',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff234777)),
                  ),
                ],
              ),
              const Divider(
                thickness: 3.0,
                height: 8.0,
                color: Color(0xff2DCDDF),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Point Of Contact',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff234777)),
                  ),
                  Text(
                    'The Advertiser',
                    style: TextStyle(fontSize: 10.0, color: Color(0xff234777)),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                  // scrollDirection: Axis.horizontal,
                  children: [
                    myappCard("World Wide Adverts",
                        "124 City Road, London, EC1V 2NX"),
                    myappCard(
                        "Email Information", "worldwideadvertsinfo@gmail.com"),
                    myappCard("For Advertising", "worldwideadverts@gmail.com"),
                    myappCard(
                        "Attention Schedule", "24Hours (0GMT) Monday-Sunday")
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'Marketing and Advertising Asia',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      '+91 897 8474450',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Marketing and Advertising Europe',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      '+92 323 5885156',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
