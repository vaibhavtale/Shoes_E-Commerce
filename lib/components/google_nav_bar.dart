import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatefulWidget {
  final void Function(int)? onTabChange;
  const MyBottomNavBar({Key? key, required this.onTabChange}) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20,),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange: (value)=> widget.onTabChange!(value),
        tabs: [
          GButton(icon: Icons.home, text: "Shop",),
          GButton(icon: Icons.shopping_bag_rounded , text: "Cart",),
          // GButton(icon: Icons.person, text: "Profile",)
        ],

      ),
    );
  }
}
