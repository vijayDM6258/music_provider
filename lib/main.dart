import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:subsong/View/signuppage.dart';

import 'Providers/songsprovider.dart';
import 'Providers/videoprovider.dart';
import 'View/homepage.dart';
import 'View/signinpage.dart';
import 'View/songpage.dart';
import 'View/videopage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SongProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => VideoProvider(),
        )
      ],
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: (prefs.getBool('issignin') == true) ? '/' : 'signin',
        routes: {
          '/': (context) => MyApp(),
          'songdetails': (context) => SongDetails(),
          'videodetails': (context) => VideoDetails(),
          'signin': (context) => SignUp(),
          'signup': (context) => SignInPage()
        },
      ),
    ),
  );
}
