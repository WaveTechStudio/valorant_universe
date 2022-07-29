import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:valorant_universe/core/constant/route_constants.dart';
import 'package:valorant_universe/features/agents/model/agents_response_model.dart';
import 'package:valorant_universe/features/agents/view/agents_view.dart';
import 'package:valorant_universe/features/navbar/navbar_view.dart';
import 'package:valorant_universe/features/weapons/model/weapons_response_model.dart';
import 'package:valorant_universe/features/weapons/view/weapons_view.dart';
import '../../../features/agent_detail/view/agent_detail_view.dart';
import '../../../features/weapon_detail/weapon_detail_view.dart';

class RouteService {
  RouteService(this.context);

  final BuildContext context;

  final globalRoutes = GoRouter(
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

  void push({required String route, Object? extra}) {
    GoRouter.of(context).push(route, extra: extra);
  }

  void go({required String route, Object? extra}) {
    GoRouter.of(context).go(route, extra: extra);
  }

  void pop() {
    GoRouter.of(context).pop();
  }
}
