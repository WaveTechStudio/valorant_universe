import 'package:flutter/material.dart';

class WeaponInfo extends StatelessWidget {
  const WeaponInfo({
    Key? key,
    required this.left,
    required this.right,
  }) : super(key: key);

  final String left;
  final String right;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          left,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          right,
          style: Theme.of(context).textTheme.titleMedium,
        )
      ],
    );
  }
}
