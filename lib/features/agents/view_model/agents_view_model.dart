import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/enum/page_states.dart';
import '../../../core/extension/string_extension.dart';
import '../../../core/service/network/network_manager.dart';
import '../../../product/lang/locale_keys.g.dart';
import '../model/agents_response_model.dart';
import '../service/agents_service.dart';

part 'agents_view_model.g.dart';

class AgentsViewModel = AgentsViewModelBase with _$AgentsViewModel;

abstract class AgentsViewModelBase with Store {
  final IAgentService _agentService = AgentService(NetworkManager.instance.dio);

  @observable
  List<AgentsResponseModel?> model = [];
  List<AgentsResponseModel?> _initialModel = [];

  @observable
  PageStates? pageState;

  @observable
  int selectedFilterIndex = 0;

  @observable
  List<String> roles = [LocaleKeys.all_roles.tr()];

  @action
  Future<void> fetchAllAgents() async {
    pageState = PageStates.loading;
    final response = await _agentService.fetchAllAgents();

    if (response != null) {
      model = response;
      _initialModel = response;
      pageState = PageStates.loaded;
    } else {
      pageState = PageStates.error;
    }
  }

  @action
  void filterAgents(int index) {
    if (roles[index].toLowerCase() == 'all') {
      model = _initialModel;
    } else {
      model = _initialModel.where((element) => element?.role?.displayName == roles[index].toString()).toList();
    }
    log(model.length.toString());
    selectedFilterIndex = index;
  }

  List<Color> getLinearGradientColors(int index) {
    List<Color> colorList = [];
    model[index]?.backgroundGradientColors?.forEach((element) {
      colorList.add(element.toColor());
    });
    return colorList;
  }

  @action
  void getRoles() {
    for (var element in model) {
      if (!(roles.contains(element?.role?.displayName ?? false))) {
        roles.add(element?.role?.displayName ?? "Unknown");
      }
    }
    log(roles.toString());
  }
}
