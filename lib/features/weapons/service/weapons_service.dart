import 'package:dio/dio.dart';

import '../model/weapons_response_model.dart';

abstract class IWeaponsService {
  final Dio _dio;

  IWeaponsService(this._dio);

  Future<List<WeaponsResponseModel?>?> fetchAllWeapons();
}

class WeaponsService extends IWeaponsService {
  WeaponsService(super.dio);

  @override
  Future<List<WeaponsResponseModel?>?> fetchAllWeapons() async {
    try {
      var response = await _dio.get("/weapons");

      List model = response.data["data"];
      return model.map((e) => WeaponsResponseModel.fromJson(e)).toList();
    } catch (e) {
      return null;
    }
  }
}
