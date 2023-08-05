import 'package:flutter/material.dart';
import 'package:shop_app/Pages/CartPage.dart';
import 'package:shop_app/Pages/Homepage.dart';
import 'package:shop_app/Pages/ItemPage.dart';
import 'package:shop_app/Pages/LoadingPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext contrxt) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: "/loading", // Set the initial route to LoadingPage
      routes: {
        "/loading": (context) => LoadingPage(),
        "/": (context) => HomePage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}
