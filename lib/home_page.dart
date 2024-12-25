import 'package:flutter/material.dart';
import 'package:jobmage/screens/profile_screen.dart';
import 'package:jobmage/screens/resources_screen.dart';
import 'screens/assessment_screen.dart';
import 'screens/job_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _sellectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _sellectedIndex = index;
    });
  }

  //different pages to navigate to
  final List<Widget> _children = [
    // const HomeScreen(),
    const JobScreen(),
    const ResourceScreen(),
    const AssessmentScreen(),
    const ProfileScreen(),
    // ChatBotScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Job',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              'Mage',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
      body: _children[_sellectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _sellectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          // BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: 'Job'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_sharp), label: 'Resources'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assessment), label: 'Assessment'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
