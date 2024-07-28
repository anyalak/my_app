import 'package:flutter/material.dart';
import 'package:makeitll/presentation/main/home_page.dart';
import 'package:makeitll/presentation/main/profile_page.dart' show ProfilePage;
import 'package:makeitll/presentation/view/Chat/chat_page.dart';
import 'package:makeitll/presentation/view/Favorit/favorit_page.dart';
import 'package:makeitll/presentation/view/Setting/setting_page.dart';
import 'package:makeitll/presentation/widgets/buttom_nav.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  List<Widget> get _children =>
      [HomePage(), FavoritPage(), ChatPage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/dog.jpg'),
              ),
            ),
          )
        ],
        title: Text(getTitle(_currentIndex)),
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/bibimbap.png'),
        ),
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
      ),
      body: _children[_currentIndex],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  String getTitle(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Favorit';
      case 2:
        return 'Chat';
      case 3:
        return 'Setting';
      default:
        return 'Home';
    }
  }
}
