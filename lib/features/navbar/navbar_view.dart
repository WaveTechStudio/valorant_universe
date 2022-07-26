import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../agents/view/agents_view.dart';
import '../weapons/view/weapons_view.dart';

class NavbarView extends StatefulWidget {
  const NavbarView({Key? key}) : super(key: key);

  @override
  State<NavbarView> createState() => _NavbarViewState();
}

class _NavbarViewState extends State<NavbarView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/agent.svg",
                color: Colors.black,
              ),
              label: 'Agents'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/weapon.svg",
                color: Colors.black,
              ),
              label: 'Weapons'),
        ],
        currentIndex: _currentIndex,
        onTap: (index) => setState(() {
          _currentIndex = index;
        }),
      ),
      body: pages[_currentIndex],
    );
  }

  static final pages = [
    const AgentsView(),
    const WeaponsView(),
  ];
}
