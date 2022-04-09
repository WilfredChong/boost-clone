import 'package:flutter/material.dart';
import 'package:fyx/screens/main_page/main_page.dart';
import 'screens/profile_page/profile_page.dart';
import 'screens/promotions_page/promotions_page.dart';
import 'screens/transactions_page/transactions_page.dart';

void main() {
  runApp(const StartPage());
}

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int currentIndex = 0;
  final screens = [
    const MainPage(),
    const PromotionsPage(),
    const Center(child: Text('Pay', style: TextStyle(fontSize: 60))),
    const TransactionsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(child: screens[currentIndex]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.campaign),
              label: 'Promotion',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.paid),
              label: 'Pay',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.toc),
              label: 'Transactions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
