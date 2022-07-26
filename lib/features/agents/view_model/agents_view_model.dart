import 'package:mobx/mobx.dart';
import '../../../core/service/network/network_manager.dart';
import '../model/agents_response_model.dart';
import '../service/agents_service.dart';

import '../../../core/enums/page_states.dart';
part 'agents_view_model.g.dart';

class AgentsViewModel = _AgentsViewModelBase with _$AgentsViewModel;

abstract class _AgentsViewModelBase with Store {
  final IAgentService _agentService = AgentService(NetworkManager.instance.dio);

  @observable
  AgentsResponseModel model = AgentsResponseModel();

  @observable
  PageStates? pageState;

  @action
  Future<void> fetchAllAgents() async {
    pageState = PageStates.loading;
    final response = await _agentService.fetchAllAgents();

    if (response != null) {
      model = response;
      pageState = PageStates.loaded;
    } else {
      pageState = PageStates.error;
    }
  }
}
