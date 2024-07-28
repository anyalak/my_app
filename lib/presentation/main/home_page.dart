import 'package:flutter/material.dart';
import 'package:makeitll/presentation/main/profile_page.dart' show ProfilePage;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: const Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Welcome to the Home Page!'),
        ]),
      ),
    );
  }
}
