import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'core/constant/string_constants.dart';
import 'core/service/route/route_service.dart';
import 'core/constant/locale_constants.dart';
import 'core/constant/path_constants.dart';
import 'core/init/localization_init.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await localizationInit();

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
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
      ),
      // app name
      title: StringConstants.appName,

      // localization
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      // routing
      routeInformationParser: RouteService.instance.globalRoutes.routeInformationParser,
      routerDelegate: RouteService.instance.globalRoutes.routerDelegate,
      routeInformationProvider: RouteService.instance.globalRoutes.routeInformationProvider,
    );
  }
}
