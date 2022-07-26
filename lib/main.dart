import 'package:flutter/material.dart';

import 'features/navbar/navbar_view.dart';

void main() => runApp(const ValorantUniverse());

class ValorantUniverse extends StatelessWidget {
  const ValorantUniverse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Valorant Universe', home: NavbarView());
  }
}
