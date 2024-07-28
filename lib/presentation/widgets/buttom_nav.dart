import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key, this.currentIndex = 0, this.onTap});

  final void Function(int)? onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline_sharp),
          label: 'Like',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_rounded),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_applications_sharp),
          label: 'Setting',
        ),
      ],
    );
  }
}
