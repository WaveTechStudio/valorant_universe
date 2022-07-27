import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:valorant_universe/core/router/route_manager.dart';
import 'package:valorant_universe/features/weapon_detail/weapon_detail_view.dart';
import '../../../core/extension/context_extension.dart';

import '../../../core/constant/view_constants.dart';
import '../../../core/enum/page_states.dart';
import '../view_model/weapons_view_model.dart';

class WeaponsView extends StatefulWidget {
  const WeaponsView({Key? key}) : super(key: key);

  @override
  State<WeaponsView> createState() => _WeaponsViewState();
}

class _WeaponsViewState extends State<WeaponsView> {
  late WeaponsViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = WeaponsViewModel();
    _viewModel.fetchAllWeapons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Observer(builder: (_) {
        if (_viewModel.pageState == PageStates.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (_viewModel.pageState == PageStates.loaded) {
          return Column(
            children: [
              Expanded(
                child: _weaponsGridView(context),
              )
            ],
          );
        } else {
          return const Center(child: Text("Something went wrong"));
        }
      }),
    );
  }

  AppBar _appbar() {
    return AppBar(
        title: const Text(
      "Weapons",
      style: TextStyle(fontFamily: "Valorant"),
    ));
  }

  GridView _weaponsGridView(BuildContext context) {
    return GridView.builder(
        padding: context.paddingAllDefault,
        itemCount: _viewModel.model.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: context.mediumValue,
            crossAxisSpacing: context.mediumValue,
            childAspectRatio: 1,
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          return ClipRRect(
              borderRadius: ViewConstants.borderCircular,
              child: GestureDetector(
                onTap: () {
                  RouteManager().push(context, WeaponDetailView(weapon: _viewModel.model[index]));
                },
                child: _weaponsStackedCard(index, context),
              ));
        });
  }

  Stack _weaponsStackedCard(int index, BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.grey,
        ),
        Column(
          children: [
            Expanded(
              flex: 3,
              child: CachedNetworkImage(
                imageUrl: _viewModel.model[index]?.displayIcon ?? "",
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  _viewModel.model[index]?.displayName ?? "",
                  style: Theme.of(context).textTheme.headline6?.copyWith(fontFamily: "Valorant"),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(_viewModel.model[index]?.shopData?.category ?? "",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontFamily: "Valorant")),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
