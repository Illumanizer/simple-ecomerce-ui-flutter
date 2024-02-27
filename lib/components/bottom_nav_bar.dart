import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChanged;
  BottomNavBar({super.key, required this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    return GNav(
      color: Colors.grey[400],
      activeColor: Colors.grey[700],
      tabActiveBorder: Border.all(color: Colors.white),
      tabBackgroundColor: Colors.grey.shade100,
      mainAxisAlignment: MainAxisAlignment.center,
      onTabChange: (index) => onTabChanged!(index),
      gap: 8,
      tabs: const [
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
        GButton(
          icon: Icons.shopping_bag_rounded,
          text: 'Cart',
        ),
      ],
    );
  }
}
