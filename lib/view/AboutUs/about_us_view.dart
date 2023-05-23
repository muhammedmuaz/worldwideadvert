import 'package:flutter/material.dart';



class AbousUsView extends StatelessWidget {
  const AbousUsView({super.key});
final String heading1 ="World Wide Adverts is a UK registered business with the company number 13241715 .We are a digital marketing company that offers a platform to grow business and brands.Our aim is to offer global  market place for all by allowing all businesses big ,small and individual  to advertise thier products and services.It is our goal to engage buisnesses and customers in this global marketplace.We aim to make it easier for everyone around the world to have access to as many services and products as possible within the legal parameters of their sovereignty (country )and the world (other countries).We are here to offer a better and bigger market for trade.Our services cater for, all buyers, sellers, service providers, events planners and much more.We aim to be the biggest one-stop marketplace for as many services and products as possible.We are here to help businesses grow thier brands and services.";
final String heading2 ="We are here to help businesses achieve  goals of growing services and products beyond borders.Our endeavor is to see businesses and trade grow between nations and continents in the hope of improving development and technology across the world.World wide adverts Ltd (worldwideadverts.org) is an open market for legal products and services that can be freely traded between individuals, companies or between companies and individuals.We are here to serve and assist business all business and investments grow through advertising and marketing to a broader market.We are here help you expand your market, let us grow with you.Your success is our success and business our business together we will excel";
  @override
  Widget build(BuildContext context) {

    
    return SafeArea(
      child: Scaffold(        
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Text('About Us',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Color(0xff234777)),),
                ],
              ),
              const SizedBox(height: 10.0,),
              const Divider(thickness: 3.0,height: 8.0,color: Color(0xff2DCDDF),),
              const SizedBox(height: 10.0,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child: Text(heading1,style:const  TextStyle(fontSize: 10.0,color: Color(0xff234777)),)),
                ],
              ),
              const SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child: Text(heading2,style:const  TextStyle(fontSize: 10.0,color: Color(0xff234777)),)),
                ],
              ),
              const SizedBox(height: 10.0,),
              Expanded(
                child: GridView.count(crossAxisCount: 4,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                children: [
                
                 Card(
                   color: Colors.greenAccent[100],
                  child: Icon(Icons.home,size: 40.0,color: Colors.orange,),
                 ),
                 Card(
                   color: Colors.greenAccent[100],
                  child: Icon(Icons.favorite,size: 40.0,color: Colors.orange,),
                 ),
                 Card(
                   color: Colors.greenAccent[100],
                  child: Icon(Icons.person,size: 40.0,color: Colors.orange,),
                 ), Card(
                   color: Colors.greenAccent[100],
                  child: Icon(Icons.wallet,size: 40.0,color: Colors.orange,),
                 )

        

                ],
                
                ),
              )
             
            ],
          ),
        ),
      ),
    );
  }
}