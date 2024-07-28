import 'package:flutter/material.dart';
import 'package:makeitll/presentation/main/profile_page.dart' show ProfilePage;
import 'package:makeitll/presentation/widgets/buttom_nav.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  List<Widget> get _children => [
        Center(
          child: Text('Home'),
        ),
        Center(
          child: Text('Like'),
        ),
        Center(
          child: Text('Chat'),
        ),
        Center(
          child: Text('Settings'),
        )
      ];

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
        title: const Text('Home Page'),
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/bibimbap.png'),
        ),
      ),
      bottomNavigationBar: BottomNav(),
      body: _children[_currentIndex],
    );
  }
}
