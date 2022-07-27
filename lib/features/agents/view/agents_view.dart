import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
          return Padding(
            padding: context.paddingAllDefault,
            child: Column(
              children: [
                SizedBox(
                  height: context.veryHighValue,
                  child: ListView.builder(
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
                            width: context.veryHighValue * 2,
                            decoration: BoxDecoration(
                                color: _viewModel.selectedFilterIndex == index ? Colors.red : Colors.black,
                                borderRadius: BorderRadius.circular(12)),
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
                  ),
                ),
                Expanded(
                  child: GridView.builder(
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
                            borderRadius: BorderRadius.circular(12),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: _viewModel.getLinearGradientColors(index),
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: CachedNetworkImage(
                                        imageUrl: _viewModel.model[index]?.fullPortraitV2 ?? "",
                                        errorWidget: (context, url, error) => const Icon(Icons.error),
                                        fit: BoxFit.fill,
                                      ),
                                      // Image.network(_viewModel.model[index]?.fullPortraitV2 ??
                                      //     "https://media.valorant-api.com/agents/dade69b4-4f5a-8528-247b-219e5a1facd6/fullportrait.png"),
                                    ),
                                    Expanded(
                                        child: Center(
                                            child: Text(_viewModel.model[index]?.displayName ?? "",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6
                                                    ?.copyWith(fontFamily: "Valorant")))),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
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
}
