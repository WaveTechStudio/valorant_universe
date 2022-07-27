import 'package:mobx/mobx.dart';

import '../../../core/enum/page_states.dart';
import '../../../core/service/network/network_manager.dart';
import '../model/weapons_response_model.dart';
import '../service/weapons_service.dart';

part 'weapons_view_model.g.dart';

class WeaponsViewModel = WeaponsViewModelBase with _$WeaponsViewModel;

abstract class WeaponsViewModelBase with Store {
  final IWeaponsService _weaponsService = WeaponsService(NetworkManager.instance.dio);

  @observable
  WeaponsResponseModel model = WeaponsResponseModel();

  @observable
  PageStates? pageState;

  @action
  Future<void> fetchAllWeapons() async {
    pageState = PageStates.loading;
    final response = await _weaponsService.fetchAllWeapons();

    if (response != null) {
      model = response;
      pageState = PageStates.loaded;
    } else {
      pageState = PageStates.error;
    }
  }
}
