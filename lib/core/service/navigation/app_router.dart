import 'package:auto_route/annotations.dart';
import '../../../features/agent_detail/view/agent_detail_view.dart';
import '../../../features/agents/view/agents_view.dart';
import '../../../features/navbar/navbar_view.dart';
import '../../../features/weapon_detail/weapon_detail_view.dart';
import '../../../features/weapons/view/weapons_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: "View,Route",
  routes: <AutoRoute>[
    MaterialRoute(
      page: NavbarView,
      initial: true,
      children: [
        MaterialRoute(page: AgentsView, initial: true),
        MaterialRoute(page: WeaponsView),
      ],
    ),
    MaterialRoute(page: AgentDetailView),
    MaterialRoute(page: WeaponDetailView),
  ],
)
class $AppRouter {}
