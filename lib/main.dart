import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_marketplace/pages/category.dart';
import 'pages/cart.dart';
import 'pages/home.dart';
import 'pages/search.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Marketplace',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.routeName: (BuildContext context) => const HomePage(),
        SearchPage.routeName: (BuildContext context) => const SearchPage(),
        CartPage.routeName: (BuildContext context) => const CartPage(),
        CategoryScreen.routeName: (BuildContext context) => const CategoryScreen()
      },
    );
  }
}
