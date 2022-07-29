import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:valorant_universe/core/constant/path_constants.dart';

import '../../product/lang/locale_keys.g.dart';
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
                PathConstants.agentSvg,
                color: Colors.black,
              ),
              label: LocaleKeys.common_agents.tr()),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                PathConstants.weaponSvg,
                color: Colors.black,
              ),
              label: LocaleKeys.common_weapons.tr()),
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
