import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../core/enums/page_states.dart';
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
      appBar: AppBar(title: const Text("Weapons")),
      body: Observer(builder: (_) {
        if (_viewModel.pageState == PageStates.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (_viewModel.pageState == PageStates.loaded) {
          return Center(
            child: Text(_viewModel.model.data?[0].category ?? ""),
          );
        } else {
          return const Center(child: Text("Something went wrong"));
        }
      }),
    );
  }
}
