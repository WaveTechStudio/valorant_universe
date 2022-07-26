import 'dart:io';

import 'package:dio/dio.dart';
import '../model/agents_response_model.dart';

import '../../../core/exception/network_error_exception.dart';

abstract class IAgentService {
  final Dio _dio;

  IAgentService(this._dio);

  Future<AgentsResponseModel?> fetchAllAgents();
}

class AgentService extends IAgentService {
  AgentService(super.dio);

  @override
  Future<AgentsResponseModel?> fetchAllAgents() async {
    var response = await _dio.get("/agents");
    switch (response.statusCode) {
      case HttpStatus.ok:
        return AgentsResponseModel.fromJson(response.data);
      default:
        throw NetworkError(response.statusCode.toString(), response.statusMessage.toString());
    }
  }
}
