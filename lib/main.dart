import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:worldwideadverts/view/AboutUs/about_us_view.dart';
import 'package:worldwideadverts/view/Categories/categories_view.dart';
import 'package:worldwideadverts/view/FavouriteList/favourite_list_view.dart';
import 'package:worldwideadverts/view/Help&ContactUs/help_contact_view.dart';
import 'package:worldwideadverts/view/HomeScreen/homepage.dart';
import 'package:worldwideadverts/view/PrivacyPolicy/privacy_policy_view.dart';
import 'package:worldwideadverts/view/SettingScreen/settings_view.dart';
import 'network/enviroment.dart';
import 'view/Auth/loginscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor:
          SystemUiOverlayStyle.dark.systemNavigationBarColor,
    ),
  );

  await GetStorage.init();
  // const String environment = String.fromEnvironment(
  //   'ENVIRONMENT',
  //   defaultValue: Environment.dev,
  // );

  Enviroment().initConfig('ENVIRONMENT');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'World Wide Adverts',
      debugShowCheckedModeBanner: false,
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      theme: ThemeData(
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: Colors.orange),
        // fontFamily: 'SourceSansPro',
        textTheme: TextTheme(
          headline3: const TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 45.0,
            // fontWeight: FontWeight.w400,
            color: Colors.orange,
          ),
          button: const TextStyle(
            // OpenSans is similar to NotoSans but the uppercases look a bit better IMO
            fontFamily: 'OpenSans',
          ),
          caption: TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
            color: Colors.deepPurple[300],
          ),
          headline1: const TextStyle(fontFamily: 'Quicksand'),
          headline2: const TextStyle(fontFamily: 'Quicksand'),
          headline4: const TextStyle(fontFamily: 'Quicksand'),
          headline5: const TextStyle(fontFamily: 'NotoSans'),
          headline6: const TextStyle(fontFamily: 'NotoSans'),
          subtitle1: const TextStyle(fontFamily: 'NotoSans'),
          bodyText1: const TextStyle(fontFamily: 'NotoSans'),
          bodyText2: const TextStyle(fontFamily: 'NotoSans'),
          subtitle2: const TextStyle(fontFamily: 'NotoSans'),
          overline: const TextStyle(fontFamily: 'NotoSans'),
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)
            .copyWith(secondary: Colors.orange),
      ),
      // navigatorObservers: [TransitionRouteObserver()],
      // initialRoute: LoginScreen.routeName,
      // routes: {
      //   LoginScreen: (context) => LoginScreen(),
      //   // DashboardScreen.routeName: (context) => const DashboardScreen(),
      // },
      home: LoginScreen(),
    );
  }
}
