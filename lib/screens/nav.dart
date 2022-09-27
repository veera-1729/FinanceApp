import 'package:finance_app/screens/statistics.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/screens/home.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> children = [
    Home(),
    Statistics(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color(0xff368983),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                child: Icon(
                  Icons.home,
                  size: 30,
                  color: Color(0xff368983),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: Icon(
                  Icons.bar_chart_outlined,
                  size: 30,
                  color: Color(0xff368983),
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  _navigateBottomNavBar;
                },
                child: Icon(
                  Icons.account_balance_wallet_outlined,
                  size: 30,
                  color: Color(0xff368983),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _navigateBottomNavBar;
                },
                child: Icon(
                  Icons.person_outlined,
                  size: 30,
                  color: Color(0xff368983),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
