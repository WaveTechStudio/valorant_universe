import 'package:flutter/material.dart';

import '../../../core/constant/view_constants.dart';
import '../../../core/extension/context_extension.dart';
import '../../../core/extension/string_extension.dart';
import '../../../product/widgets/cached_network_image.dart';
import '../../agents/model/agents_response_model.dart';

class AgentDetailView extends StatelessWidget {
  const AgentDetailView({
    Key? key,
    required this.agent,
  }) : super(key: key);

  final AgentsResponseModel? agent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: context.dynamicHeight(0.4),
              child: Stack(
                children: [
                  _agentBackground(),
                  _agentImage(context),
                  _agentNameAndRole(context),
                ],
              ),
            ),
            Padding(
              padding: context.paddingAllDefault,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "// Lore",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: "Valorant"),
                  ),
                  SizedBox(
                    height: context.mediumValue,
                  ),
                  Text(
                    agent?.description ?? "",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white70),
                  ),
                  SizedBox(
                    height: context.mediumValue,
                  ),
                  Text(
                    "// Abilities",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: "Valorant"),
                  ),
                  SizedBox(
                    height: context.mediumValue,
                  ),
                  _abilitiesList()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _agentBackground() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: getLinearGradientColors(agent),
        ),
      ),
    );
  }

  Positioned _agentImage(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 0,
      child: SizedBox(
        height: context.dynamicHeight(0.3),
        child: CustomCachedNetworkImage(
          imageUrl: agent?.bustPortrait,
        ),
      ),
    );
  }

  Align _agentNameAndRole(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: context.paddingLeftDefault,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              agent?.displayName ?? "",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontFamily: "Valorant"),
            ),
            Text(
              agent?.role?.displayName ?? "",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: "Valorant"),
            ),
          ],
        ),
      ),
    );
  }

  ListView _abilitiesList() {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: agent?.abilities?.length ?? 0,
        itemBuilder: ((context, index) {
          return Card(
            shape: RoundedRectangleBorder(borderRadius: ViewConstants.borderCircular),
            child: ListTile(
              dense: true,
              leading: CustomCachedNetworkImage(
                imageUrl: agent?.abilities?[index].displayIcon,
              ),
              title: Text(agent?.abilities?[index].displayName ?? "", style: Theme.of(context).textTheme.titleMedium),
              subtitle: Text(
                agent?.abilities?[index].description ?? "",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          );
        }));
  }
}

List<Color> getLinearGradientColors(AgentsResponseModel? agent) {
  List<Color> colorList = [];
  agent?.backgroundGradientColors?.forEach((element) {
    colorList.add(element.toColor());
  });
  return colorList;
}
