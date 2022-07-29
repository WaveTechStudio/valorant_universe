import 'package:flutter/material.dart';
import '../../core/constant/view_constants.dart';
import '../../core/extension/context_extension.dart';
import '../../product/widgets/cached_network_image.dart';
import '../weapons/model/weapons_response_model.dart';

class WeaponDetailView extends StatelessWidget {
  const WeaponDetailView({
    Key? key,
    required this.weapon,
  }) : super(key: key);

  final WeaponsResponseModel? weapon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        weapon?.displayName ?? "",
        style: const TextStyle(fontFamily: "Valorant"),
      )),
      body: Padding(
        padding: context.paddingHorizontalDefault,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _buildWeaponCard(context),
            ),
            SizedBox(
              height: context.mediumValue,
            ),
            Expanded(
              flex: 3,
              child: _buildWeaponStats(context),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildWeaponCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: ViewConstants.borderCircular,
        color: Colors.blueGrey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Expanded(
            flex: 2,
            child: Center(child: CustomCachedNetworkImage(imageUrl: weapon?.displayIcon)),
          ),
          Expanded(
            child: Padding(
              padding: context.paddingHorizontalDefault,
              child: Text(weapon?.displayName ?? "",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: "Valorant")),
            ),
          ),
          Expanded(
            child: Padding(
              padding: context.paddingHorizontalDefault,
              child: Text(
                weapon?.shopData?.categoryText ?? "",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: "Valorant"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column _buildWeaponStats(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "// Weapon Stats",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: "Valorant"),
        ),
        SizedBox(
          height: context.mediumValue,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Magazine Size",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              weapon?.weaponStats?.magazineSize.toString() ?? "",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Reload Time",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "${weapon?.weaponStats?.reloadTimeSeconds?.toStringAsFixed(2) ?? "0"} /sec",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Fire Rate",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "${weapon?.weaponStats?.fireRate?.toStringAsFixed(2) ?? "0"} /sec",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const Divider(),
        SizedBox(
          height: context.mediumValue,
        ),
        (weapon?.weaponStats?.damageRanges?.length ?? 0) == 0
            ? const SizedBox.shrink()
            : Text(
                "// Damage Ranges",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: "Valorant"),
              ),
        SizedBox(
          height: context.mediumValue,
        ),
        Expanded(
          child: _buildDamageRanges(),
        )
      ],
    );
  }

  ListView _buildDamageRanges() {
    return ListView.separated(
        itemBuilder: ((context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${weapon?.weaponStats?.damageRanges?[index].rangeStartMeters?.toStringAsFixed(0) ?? ""} - ${weapon?.weaponStats?.damageRanges?[index].rangeEndMeters?.toStringAsFixed(0) ?? ""} m",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Head Damage",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    weapon?.weaponStats?.damageRanges?[index].headDamage?.toStringAsFixed(1) ?? "0",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Body Damage",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    weapon?.weaponStats?.damageRanges?[index].bodyDamage?.toStringAsFixed(1) ?? "0",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Leg Damage"),
                  Text(
                    weapon?.weaponStats?.damageRanges?[index].bodyDamage?.toStringAsFixed(1) ?? "0",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              const Divider(),
            ],
          );
        }),
        separatorBuilder: (context, index) => SizedBox(
              height: context.mediumValue,
            ),
        itemCount: weapon?.weaponStats?.damageRanges?.length ?? 0);
  }
}
