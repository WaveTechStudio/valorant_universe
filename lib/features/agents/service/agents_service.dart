import 'package:dio/dio.dart';

import '../model/agents_response_model.dart';

abstract class IAgentService {
  final Dio _dio;

  IAgentService(this._dio);

  Future<List<AgentsResponseModel?>?> fetchAllAgents(String locale);
}

class AgentService extends IAgentService {
  AgentService(super.dio);

  @override
  Future<List<AgentsResponseModel?>?> fetchAllAgents(String locale) async {
    try {
      var response = await _dio.get("/agents?language=$locale&isPlayableCharacter=true");

      List model = response.data["data"];
      return model.map((e) => AgentsResponseModel.fromJson(e)).toList();
    } catch (e) {
      return null;
    }
  }
}
