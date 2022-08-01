import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/service/navigation/navigation_manager.dart';
import 'product/constants/locale_constants.dart';
import 'product/constants/string_constants.dart';
import 'product/init/product_init.dart';
import 'product/theme/product_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ProductInit.localizationInit();
  await ProductInit.setupSystem();

  runApp(
    EasyLocalization(
      supportedLocales: const [LocaleConstants.en, LocaleConstants.tr],
      path: LocaleConstants.translationsPath,
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
      theme: ProductTheme.theme,
      // app name
      title: StringConstants.appName,

      // localization
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      // routing
      routeInformationParser: NavigationManager.instance.globalRoutes.routeInformationParser,
      routerDelegate: NavigationManager.instance.globalRoutes.routerDelegate,
      routeInformationProvider: NavigationManager.instance.globalRoutes.routeInformationProvider,
    );
  }
}
