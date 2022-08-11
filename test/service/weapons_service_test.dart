import 'package:flutter_test/flutter_test.dart';
import 'package:valorant_universe/core/manager/network/network_manager.dart';

import 'package:valorant_universe/features/weapons/service/weapons_service.dart';

void main() {
  late IWeaponsService weaponService;
  setUp(() {
    weaponService = WeaponsService(NetworkManager.instance.dio);
  });
  test('fetchAllWeapons test', () async {
    final response = await weaponService.fetchAllWeapons("en-US");
    expect(response, isList);
  });
}
