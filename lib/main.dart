import 'package:flutter/material.dart';
import 'package:saran_ott/new.dart';
import 'package:saran_ott/pages/editprofile.dart';
import 'package:saran_ott/pages/home.dart';
import 'package:saran_ott/pages/language.dart';
import 'package:saran_ott/pages/languages.dart';
import 'package:saran_ott/pages/search.dart';
import 'package:saran_ott/pages/settings.dart';
import 'package:saran_ott/pages/video%20discription.dart';
import 'package:saran_ott/pages/video%20player.dart';
import 'package:saran_ott/screens/HomePage.dart';
import 'package:saran_ott/screens/Profile.dart';
import 'package:saran_ott/screens/Sports.dart';
import 'package:saran_ott/screens/TvShows.dart';
import 'package:saran_ott/screens/movies.dart';
import 'package:saran_ott/splash_screen/flash.dart';

void main() {
  runApp(const MyApp());
}
bool isDarkMode = true;

class MyApp extends StatelessWidget {

  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),

      theme: ThemeData.light().copyWith(
        // Define the text theme for the light theme
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black), // Set text color to black
          // Add more text styles if needed
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        // Define the text theme for the dark theme
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white), // Set text color to white
          // Add more text styles if needed
        ),
      ),
      // home: homepage(),
      routes: {
        '/': (context) => splashscreen(
          // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
          child: language(),
        ),
    },
    );
  }
}
