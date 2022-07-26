import 'dart:io';

import 'package:dio/dio.dart';
import 'package:valorant_universe/features/weapons/model/weapons_response_model.dart';

import '../../../core/exception/network_error_exception.dart';

abstract class IWeaponsService {
  final Dio _dio;

  IWeaponsService(this._dio);

  Future<WeaponsResponseModel?> fetchAllWeapons();
}

class WeaponsService extends IWeaponsService {
  WeaponsService(super.dio);

  @override
  Future<WeaponsResponseModel?> fetchAllWeapons() async {
    var response = await _dio.get("/weapons");
    switch (response.statusCode) {
      case HttpStatus.ok:
        return WeaponsResponseModel.fromJson(response.data);
      default:
        throw NetworkError(response.statusCode.toString(), response.statusMessage.toString());
    }
  }
}
