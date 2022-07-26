import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../core/enums/page_states.dart';
import '../view_model/agents_view_model.dart';

class AgentsView extends StatefulWidget {
  const AgentsView({Key? key}) : super(key: key);

  @override
  State<AgentsView> createState() => _AgentsViewState();
}

class _AgentsViewState extends State<AgentsView> {
  late AgentsViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = AgentsViewModel();
    _viewModel.fetchAllAgents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Agents"),
      ),
      body: Observer(builder: (_) {
        if (_viewModel.pageState == PageStates.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (_viewModel.pageState == PageStates.loaded) {
          return Center(child: Text(_viewModel.model.data?[0].role?.displayName ?? ""));
        } else {
          return const Center(child: Text("Something went wrong"));
        }
      }),
    );
  }
}
