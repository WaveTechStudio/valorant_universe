import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../core/constant/view_constants.dart';
import '../../../core/extension/context_extension.dart';
import '../../../core/enum/page_states.dart';
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
    _viewModel.fetchAllAgents().then((value) => _viewModel.getRoles());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Observer(builder: (_) {
        if (_viewModel.pageState == PageStates.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (_viewModel.pageState == PageStates.loaded) {
          return Padding(
            padding: context.paddingAllDefault,
            child: Column(
              children: [
                Expanded(
                  child: _agentRolesCard(),
                ),
                Expanded(
                  flex: 9,
                  child: _agentsGridView(context),
                )
              ],
            ),
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
        "Agents",
        style: TextStyle(fontFamily: "Valorant"),
      ),
    );
  }

  ListView _agentRolesCard() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _viewModel.roles.length,
      itemBuilder: ((context, index) {
        return Padding(
          padding: context.paddingRightDefault,
          child: GestureDetector(
            onTap: () {
              _viewModel.filterAgents(index);
            },
            child: Container(
              padding: context.paddingHorizontalDefault,
              decoration: BoxDecoration(
                  color: _viewModel.selectedFilterIndex == index ? Colors.red : Colors.black,
                  borderRadius: ViewConstants.borderCircular),
              child: Center(
                child: Text(
                  _viewModel.roles[index],
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(fontFamily: "Valorant"),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  GridView _agentsGridView(BuildContext context) {
    return GridView.builder(
        itemCount: _viewModel.model.length,
        padding: context.paddingVerticalDefault,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: context.mediumValue,
            crossAxisSpacing: context.mediumValue,
            childAspectRatio: 3 / 4,
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: ViewConstants.borderCircular,
              child: Stack(
                children: [
                  _stackBackground(index),
                  _stackImageAndName(index, context),
                ],
              ),
            ),
          );
        });
  }

  Container _stackBackground(int index) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: _viewModel.getLinearGradientColors(index),
        ),
      ),
    );
  }

  Column _stackImageAndName(int index, BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: CachedNetworkImage(
            imageUrl: _viewModel.model[index]?.fullPortraitV2 ?? "",
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
      ],
    );
  }
}
