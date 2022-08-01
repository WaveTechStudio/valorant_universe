import 'package:go_router/go_router.dart';

import '../../features/agent_detail/view/agent_detail_view.dart';
import '../../features/agents/model/agents_response_model.dart';
import '../../features/agents/view/agents_view.dart';
import '../../features/navbar/navbar_view.dart';
import '../../features/weapon_detail/weapon_detail_view.dart';
import '../../features/weapons/model/weapons_response_model.dart';
import '../../features/weapons/view/weapons_view.dart';
import '../constants/route_constants.dart';

class ProductRouter {
  static GoRouter globalRoutes = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: RouteConstants.navbar,
    routes: [
      GoRoute(
        path: RouteConstants.navbar,
        builder: (context, state) => const NavbarView(),
      ),
      GoRoute(
        path: RouteConstants.agents,
        builder: (context, state) => const AgentsView(),
      ),
      GoRoute(
        path: RouteConstants.agentDetail,
        builder: (context, state) {
          final agent = state.extra! as AgentsResponseModel;
          return AgentDetailView(agent: agent);
        },
      ),
      GoRoute(
        path: RouteConstants.weapons,
        builder: (context, state) => const WeaponsView(),
      ),
      GoRoute(
        path: RouteConstants.weaponDetail,
        builder: (context, state) {
          final weapon = state.extra as WeaponsResponseModel;
          return WeaponDetailView(weapon: weapon);
        },
      ),
    ],
  );
}
