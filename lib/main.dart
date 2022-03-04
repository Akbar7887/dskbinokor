import 'package:dskbinokor/pages/PhotoPage.dart';
import 'package:dskbinokor/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.blue,
        // fontFamily: 'ru_New_Standard_Old',
        // brightness: Brightness.light,
        // primaryColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
         '/': (context) => Home(),
         // '/image': (context) => PhotoPage(),
         // 'testpage': (context) => TestPage(),
        // 'offerpage': (context) => OfferPage(),
        // 'editmodels': (context) => AdminPage(),

      },
    );
  }
}

