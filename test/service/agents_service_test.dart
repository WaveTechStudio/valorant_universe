import 'package:flutter_test/flutter_test.dart';
import 'package:valorant_universe/core/service/network/network_manager.dart';
import 'package:valorant_universe/features/agents/service/agents_service.dart';

void main() {
  late IAgentService agentService;
  setUp(() {
    agentService = AgentService(NetworkManager.instance.dio);
  });
  test('fetchAllAgents test', () async {
    final response = await agentService.fetchAllAgents();
    expect(response, isList);
  });
}
