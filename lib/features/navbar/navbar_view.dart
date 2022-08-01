import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../product/icons/custom_icons.dart';
import '../../product/lang/codegen_loader.g.dart';
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
            icon: const Icon(CustomIcons.agent),
            label: LocaleKeys.common_agents.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(CustomIcons.weapon),
            label: LocaleKeys.common_weapons.tr(),
          ),
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
