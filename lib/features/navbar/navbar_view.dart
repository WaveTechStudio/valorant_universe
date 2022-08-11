import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../core/service/navigation/app_router.gr.dart';

import '../../product/icons/custom_icons.dart';
import '../../product/lang/locale_keys.g.dart';

// class NavbarView extends StatefulWidget {
//   const NavbarView({Key? key}) : super(key: key);

//   @override
//   State<NavbarView> createState() => _NavbarViewState();
// }

// class _NavbarViewState extends State<NavbarView> {
//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: const Icon(CustomIcons.agent),
//             label: LocaleKeys.common_agents.tr(),
//           ),
//           BottomNavigationBarItem(
//             icon: const Icon(CustomIcons.weapon),
//             label: LocaleKeys.common_weapons.tr(),
//           ),
//         ],
//         currentIndex: _currentIndex,
//         onTap: (index) => setState(() {
//           _currentIndex = index;
//         }),
//       ),
//       body: pages[_currentIndex],
//     );
//   }

//   static final pages = [
//     const AgentsView(),
//     const WeaponsView(),
//   ];
// }

class NavbarView extends StatelessWidget {
  const NavbarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        AgentsRoute(),
        WeaponsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(CustomIcons.agent),
              label: LocaleKeys.common_agents.tr(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(CustomIcons.weapon),
              label: LocaleKeys.common_weapons.tr(),
            )
          ],
        );
      },
    );
  }
}
