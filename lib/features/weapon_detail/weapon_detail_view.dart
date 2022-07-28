import 'package:flutter/material.dart';

import 'package:valorant_universe/features/weapons/model/weapons_response_model.dart';

class WeaponDetailView extends StatelessWidget {
  const WeaponDetailView({
    Key? key,
    required this.weapon,
  }) : super(key: key);

  final WeaponsResponseModel? weapon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("")),
      body: Column(
        children: const [Text("")],
      ),
    );
  }
}
