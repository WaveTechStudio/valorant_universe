// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../../features/agent_detail/view/agent_detail_view.dart' as _i2;
import '../../../features/agents/model/agents_response_model.dart' as _i8;
import '../../../features/agents/view/agents_view.dart' as _i4;
import '../../../features/navbar/navbar_view.dart' as _i1;
import '../../../features/weapon_detail/weapon_detail_view.dart' as _i3;
import '../../../features/weapons/model/weapons_response_model.dart' as _i9;
import '../../../features/weapons/view/weapons_view.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    NavbarRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavbarView());
    },
    AgentDetailRoute.name: (routeData) {
      final args = routeData.argsAs<AgentDetailRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.AgentDetailView(key: args.key, agent: args.agent));
    },
    WeaponDetailRoute.name: (routeData) {
      final args = routeData.argsAs<WeaponDetailRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.WeaponDetailView(key: args.key, weapon: args.weapon));
    },
    AgentsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.AgentsView());
    },
    WeaponsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.WeaponsView());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(NavbarRoute.name, path: '/', children: [
          _i6.RouteConfig(AgentsRoute.name, path: '', parent: NavbarRoute.name),
          _i6.RouteConfig(WeaponsRoute.name,
              path: 'weapons-view', parent: NavbarRoute.name)
        ]),
        _i6.RouteConfig(AgentDetailRoute.name, path: '/agent-detail-view'),
        _i6.RouteConfig(WeaponDetailRoute.name, path: '/weapon-detail-view')
      ];
}

/// generated route for
/// [_i1.NavbarView]
class NavbarRoute extends _i6.PageRouteInfo<void> {
  const NavbarRoute({List<_i6.PageRouteInfo>? children})
      : super(NavbarRoute.name, path: '/', initialChildren: children);

  static const String name = 'NavbarRoute';
}

/// generated route for
/// [_i2.AgentDetailView]
class AgentDetailRoute extends _i6.PageRouteInfo<AgentDetailRouteArgs> {
  AgentDetailRoute({_i7.Key? key, required _i8.AgentsResponseModel? agent})
      : super(AgentDetailRoute.name,
            path: '/agent-detail-view',
            args: AgentDetailRouteArgs(key: key, agent: agent));

  static const String name = 'AgentDetailRoute';
}

class AgentDetailRouteArgs {
  const AgentDetailRouteArgs({this.key, required this.agent});

  final _i7.Key? key;

  final _i8.AgentsResponseModel? agent;

  @override
  String toString() {
    return 'AgentDetailRouteArgs{key: $key, agent: $agent}';
  }
}

/// generated route for
/// [_i3.WeaponDetailView]
class WeaponDetailRoute extends _i6.PageRouteInfo<WeaponDetailRouteArgs> {
  WeaponDetailRoute({_i7.Key? key, required _i9.WeaponsResponseModel? weapon})
      : super(WeaponDetailRoute.name,
            path: '/weapon-detail-view',
            args: WeaponDetailRouteArgs(key: key, weapon: weapon));

  static const String name = 'WeaponDetailRoute';
}

class WeaponDetailRouteArgs {
  const WeaponDetailRouteArgs({this.key, required this.weapon});

  final _i7.Key? key;

  final _i9.WeaponsResponseModel? weapon;

  @override
  String toString() {
    return 'WeaponDetailRouteArgs{key: $key, weapon: $weapon}';
  }
}

/// generated route for
/// [_i4.AgentsView]
class AgentsRoute extends _i6.PageRouteInfo<void> {
  const AgentsRoute() : super(AgentsRoute.name, path: '');

  static const String name = 'AgentsRoute';
}

/// generated route for
/// [_i5.WeaponsView]
class WeaponsRoute extends _i6.PageRouteInfo<void> {
  const WeaponsRoute() : super(WeaponsRoute.name, path: 'weapons-view');

  static const String name = 'WeaponsRoute';
}
