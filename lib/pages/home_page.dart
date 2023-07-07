import 'package:flutter/material.dart';
import 'package:shoes_e_commerce/components/google_nav_bar.dart';
import 'package:shoes_e_commerce/pages/shop_page.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this index is to control bottom nav bar
  int _selectedIndex = 0;

  void navigateBottomBar(int index){

    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> pages = [

    ShopPage(),

    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),

      body: pages[_selectedIndex],
    );
  }
}
