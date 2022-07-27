// ignore_for_file: public_member_api_docs, sort_constructors_first
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
      appBar: AppBar(title: const Text("Weapon Detail")),
      body: Column(
        children: [Text(weapon?.displayName ?? "")],
      ),
    );
  }
}
