import 'package:flutter/material.dart';
import '../../core/constant/view_constants.dart';
import '../../core/extension/context_extension.dart';

import '../weapons/model/weapons_response_model.dart';
import '../../product/widgets/cached_network_image.dart';

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
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: ViewConstants.borderCircular,
                  color: Colors.blueGrey,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Expanded(
                      flex: 3,
                      child: Center(child: CustomCachedNetworkImage(imageUrl: weapon?.displayIcon)),
                    ),
                    Expanded(
                      child: Padding(
                        padding: context.paddingHorizontalDefault,
                        child: Text(weapon?.displayName ?? "",
                            style: Theme.of(context).textTheme.headline6?.copyWith(fontFamily: "Valorant")),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: context.paddingHorizontalDefault,
                        child: Text(
                          weapon?.shopData?.categoryText ?? "",
                          style: Theme.of(context).textTheme.headline6?.copyWith(fontFamily: "Valorant"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: context.mediumValue,
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "// Weapon Stats",
                    style: Theme.of(context).textTheme.headline6?.copyWith(fontFamily: "Valorant"),
                  ),
                  SizedBox(
                    height: context.mediumValue,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Magazine Size"),
                      Text(weapon?.weaponStats?.magazineSize.toString() ?? ""),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Reload Time"),
                      Text("${weapon?.weaponStats?.reloadTimeSeconds?.toStringAsFixed(2) ?? "0"} /sec"),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Fire Rate"),
                      Text("${weapon?.weaponStats?.fireRate?.toStringAsFixed(2) ?? "0"} /sec"),
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
                          style: Theme.of(context).textTheme.headline6?.copyWith(fontFamily: "Valorant"),
                        ),
                  SizedBox(
                    height: context.mediumValue,
                  ),
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: ((context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  "${weapon?.weaponStats?.damageRanges?[index].rangeStartMeters?.toStringAsFixed(0) ?? ""} - ${weapon?.weaponStats?.damageRanges?[index].rangeEndMeters?.toStringAsFixed(0) ?? ""} m"),
                              const Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Head Damage"),
                                  Text(weapon?.weaponStats?.damageRanges?[index].headDamage?.toStringAsFixed(1) ?? "0"),
                                ],
                              ),
                              const Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Body Damage"),
                                  Text(weapon?.weaponStats?.damageRanges?[index].bodyDamage?.toStringAsFixed(1) ?? "0"),
                                ],
                              ),
                              const Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Leg Damage"),
                                  Text(weapon?.weaponStats?.damageRanges?[index].bodyDamage?.toStringAsFixed(1) ?? "0"),
                                ],
                              ),
                              const Divider(),
                            ],
                          );
                        }),
                        separatorBuilder: (context, index) => SizedBox(
                              height: context.mediumValue,
                            ),
                        itemCount: weapon?.weaponStats?.damageRanges?.length ?? 0),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
