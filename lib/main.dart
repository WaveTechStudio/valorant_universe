import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'core/constant/locale_constants.dart';
import 'core/constant/path_constants.dart';
import 'core/init/localization_init.dart';
import 'features/navbar/navbar_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await localizationInit();

  runApp(
    EasyLocalization(
      supportedLocales: LocaleConstants.supportedLocales,
      path: PathConstants.lang,
      child: const ValorantUniverse(),
    ),
  );
}

class ValorantUniverse extends StatelessWidget {
  const ValorantUniverse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
        ),
        // app name
        title: 'Valorant Universe',
        // localization
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,

        //initial route
        home: const NavbarView());
  }
}
