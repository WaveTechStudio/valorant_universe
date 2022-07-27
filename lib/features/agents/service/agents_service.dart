import 'package:dio/dio.dart';

import '../model/agents_response_model.dart';

abstract class IAgentService {
  final Dio _dio;

  IAgentService(this._dio);

  Future<List<AgentsResponseModel?>?> fetchAllAgents();
}

class AgentService extends IAgentService {
  AgentService(super.dio);

  @override
  Future<List<AgentsResponseModel?>?> fetchAllAgents() async {
    try {
      var response = await _dio.get("/agents?isPlayableCharacter=true");

      List model = response.data["data"];
      return model.map((e) => AgentsResponseModel.fromJson(e)).toList();
    } catch (e) {
      return null;
    }
  }
}
