import 'package:flutter/material.dart';

import 'features/navbar/navbar_view.dart';

void main() => runApp(const ValorantUniverse());

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
        title: 'Valorant Universe',
        home: const NavbarView());
  }
}
