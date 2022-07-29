import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:valorant_universe/core/constant/route_constants.dart';
import 'package:valorant_universe/core/service/route/route_service.dart';

import '../../../core/constant/view_constants.dart';
import '../../../core/enum/page_states.dart';
import '../../../core/extension/context_extension.dart';
import '../../../product/lang/locale_keys.g.dart';
import '../../../product/widgets/cached_network_image.dart';
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
            padding: context.paddingHorizontalDefault,
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
          return Center(child: Text(LocaleKeys.error.tr()));
        }
      }),
    );
  }

  AppBar _appbar() {
    return AppBar(
      title: Text(
        LocaleKeys.common_agents.tr(),
        style: const TextStyle(fontFamily: "Valorant"),
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
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(fontFamily: "Valorant"),
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
          return GestureDetector(
            onTap: () => RouteService(context).push(route: RouteConstants.agentDetail, extra: _viewModel.model[index]),
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
          child: CustomCachedNetworkImage(imageUrl: _viewModel.model[index]?.fullPortraitV2),
        ),
        Expanded(
          child: Center(
            child: Text(
              _viewModel.model[index]?.displayName ?? "",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: "Valorant"),
            ),
          ),
        ),
      ],
    );
  }
}
