import 'package:flutter/material.dart';

import 'features/navbar/navbar_view.dart';

void main() => runApp(const ValorantUniverse());

class ValorantUniverse extends StatelessWidget {
  const ValorantUniverse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(), title: 'Valorant Universe', home: const NavbarView());
  }
}
