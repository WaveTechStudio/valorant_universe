import 'dart:io';

import 'package:dio/dio.dart';

import '../../../core/exception/network_error_exception.dart';
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
    var response = await _dio.get("/agents?isPlayableCharacter=true");
    switch (response.statusCode) {
      case HttpStatus.ok:
        List model = response.data["data"];
        return model.map((e) => AgentsResponseModel.fromJson(e)).toList();
      default:
        throw NetworkError(response.statusCode.toString(), response.statusMessage.toString());
    }
  }
}
