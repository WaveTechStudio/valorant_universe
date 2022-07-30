import 'package:dio/dio.dart';

import '../model/weapons_response_model.dart';

abstract class IWeaponsService {
  final Dio _dio;

  IWeaponsService(this._dio);

  Future<List<WeaponsResponseModel?>?> fetchAllWeapons(String locale);
}

class WeaponsService extends IWeaponsService {
  WeaponsService(super.dio);

  @override
  Future<List<WeaponsResponseModel?>?> fetchAllWeapons(String locale) async {
    try {
      var response = await _dio.get("/weapons?language=$locale");

      List model = response.data["data"];
      return model.map((e) => WeaponsResponseModel.fromJson(e)).toList();
    } catch (e) {
      return null;
    }
  }
}
