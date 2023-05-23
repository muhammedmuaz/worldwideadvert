import 'package:flutter/material.dart';
import 'package:worldwideadverts/view/widgets/drawer.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});
  final String title1 = "PRIVACY POLICY FOR WORLDWIDE ADVERTS";
  final String title2 = "PERSONAL IDENTIFICATION INFORMATION";
  final String title3 = "NON-PERSONAL INFORMATION";
  final String title4 = "USE OF INFORMATION";
  final String title5 = "To personalize user experience";
  final String title6 = "To improve our Site";
  final String title7 = "To send periodic emails";
  final String heading1 =
      "This Privacy Policy governs the manner in which Worldwide Advertscollects, uses, maintains and discloses information collected from users of WorldwideAdverts.info.Worldwide Adverts complies with all applicable laws and requirements for user privacy. Throughout this Policy the words “we,” “us,” and “our” refer to Worldwide Adverts. If you feel that we are not abiding by this privacy policy, you should contact us via email at worldwideadvertsinfo@gmail.com.";
  final String heading2 =
      "We may collect personal identification information from Users in a variety of ways, including, but not limited to, when Users visit our site, fill out a form, register on our site and in connection with other activities, features or resources we make available on our Site. Users may be asked for, as appropriate, name, email address and phone number.  We will collect personal identification information from Users only if they voluntarily submit such information to us. Users can always refuse to supply personally identification information, except that it may prevent them from engaging in certain Site related activities. Camera, photo and contact access will be requested for the app functionality as these features will allow proper app and website functionality. The website worldwiedsadverts.info requires this information to allow posting of adverts, services and full use of the site. The provided information will be used in accordance with the European Data protection GDPR, Data Protection 2018 Laws and Regulations USA ICLG in safeguarding your privacy.No information will be sold or traded all collected data will be used in accordance with privacy guidelines set out and for the purposes of the website/app functionality. All Data collected will be used for purposes of the website/app and will only be used within our group of companies and for the purposes of the functionality of the website/app.";
  final String heading3 =
      "We may collect non-personal identification information about Users whenever they interact with our Site. Non-personal identification information may include the browser name, the type of computer and technical information about Users means of connection to our Sites, such as the operating system and the Internet service providers utilized and other similar information. The information is essential in the running of our websites/apps and giving a good user experience and will also help us improve the functionality of our websites/apps. The Data collected will be for internal use and the improvement of our sites.";
  final String heading4 =
      "This Privacy Policy governs the manner in which Worldwide Advertscollects, uses, maintains and discloses information collected from users of WorldwideAdverts.info.Worldwide Adverts complies with all applicable laws and requirements for user privacy. Throughout this Policy the words “we,” “us,” and “our” refer to Worldwide Adverts. If you feel that we are not abiding by this privacy policy, you should contact us via email at worldwideadvertsinfo@gmail.com.";
  final String heading5 =
      "This Privacy Policy governs the manner in which Worldwide Advertscollects, uses, maintains and discloses information collected from users of WorldwideAdverts.info.Worldwide Adverts complies with all applicable laws and requirements for user privacy. Throughout this Policy the words “we,” “us,” and “our” refer to Worldwide Adverts. If you feel that we are not abiding by this privacy policy, you should contact us via email at worldwideadvertsinfo@gmail.com.";
  final String heading6 =
      "This Privacy Policy governs the manner in which Worldwide Advertscollects, uses, maintains and discloses information collected from users of WorldwideAdverts.info.Worldwide Adverts complies with all applicable laws and requirements for user privacy. Throughout this Policy the words “we,” “us,” and “our” refer to Worldwide Adverts. If you feel that we are not abiding by this privacy policy, you should contact us via email at worldwideadvertsinfo@gmail.com.";
  final String heading7 =
      "This Privacy Policy governs the manner in which Worldwide Advertscollects, uses, maintains and discloses information collected from users of WorldwideAdverts.info.Worldwide Adverts complies with all applicable laws and requirements for user privacy. Throughout this Policy the words “we,” “us,” and “our” refer to Worldwide Adverts. If you feel that we are not abiding by this privacy policy, you should contact us via email at worldwideadvertsinfo@gmail.com.";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff234777)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Divider(
                  thickness: 3.0,
                  height: 8.0,
                  color: Color(0xff2DCDDF),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      title1,
                      style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff234777)),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      heading1,
                      style: const TextStyle(
                          fontSize: 10.0, color: Color(0xff234777)),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      title2,
                      style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff234777)),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      heading2,
                      style: const TextStyle(
                          fontSize: 10.0, color: Color(0xff234777)),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      title3,
                      style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff234777)),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      heading3,
                      style: const TextStyle(
                          fontSize: 10.0, color: Color(0xff234777)),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      title4,
                      style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff234777)),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      heading4,
                      style: const TextStyle(
                          fontSize: 10.0, color: Color(0xff234777)),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      title5,
                      style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff234777)),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      heading5,
                      style: const TextStyle(
                          fontSize: 10.0, color: Color(0xff234777)),
                    )),
                  ],
                ),
              ],
            ),
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
