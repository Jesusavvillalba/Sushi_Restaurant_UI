import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_restaurant_app/models/shop.dart';
import 'package:sushi_restaurant_app/pages/cart_page.dart';
import 'package:sushi_restaurant_app/pages/intro_page.dart';
import 'package:sushi_restaurant_app/pages/menu_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //  title: 'Flutter Demo',
      //   theme: ThemeData(d),
      home: IntroPage(),
      routes: {
        'intro_page/': (context) => const IntroPage(),
        'menu_page/': (context) => const MenuPage(),
        'cart_page/': (context) => const CartPages(),
      },
    );
  }
}
