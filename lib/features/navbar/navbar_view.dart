import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/manager/language/locale_keys.g.dart';
import '../../core/manager/route/app_router.gr.dart';
import '../../product/icons/custom_icons.dart';

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
