import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../product/router/product_router.dart';

class NavigationManager {
  static final NavigationManager _instace = NavigationManager._init();
  static NavigationManager get instance => _instace;
  NavigationManager._init();

  final globalRoutes = ProductRouter.globalRoutes;

  void push({required BuildContext context, required String route, Object? extra}) {
    GoRouter.of(context).push(route, extra: extra);
  }

  void go({required BuildContext context, required String route, Object? extra}) {
    GoRouter.of(context).go(route, extra: extra);
  }

  void pop({required BuildContext context}) {
    GoRouter.of(context).pop();
  }
}
