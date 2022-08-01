import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'product/theme/product_theme.dart';

import 'core/constant/locale_constants.dart';
import 'core/constant/path_constants.dart';
import 'core/constant/string_constants.dart';
import 'core/init/app_init.dart';
import 'core/service/route/route_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppInit().localizationInit();
  await AppInit().setupSystem();

  runApp(
    EasyLocalization(
      supportedLocales: const [LocaleConstants.en, LocaleConstants.tr],
      path: PathConstants.lang,
      fallbackLocale: LocaleConstants.en,
      child: const ValorantUniverse(),
    ),
  );
}

class ValorantUniverse extends StatelessWidget {
  const ValorantUniverse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ProductTheme().theme,
      // app name
      title: StringConstants.appName,

      // localization
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      // routing
      routeInformationParser: RouteManager.instance.globalRoutes.routeInformationParser,
      routerDelegate: RouteManager.instance.globalRoutes.routerDelegate,
      routeInformationProvider: RouteManager.instance.globalRoutes.routeInformationProvider,
    );
  }
}
