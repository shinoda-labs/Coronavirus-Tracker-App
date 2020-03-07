import 'package:coronavirus_tracker/models/deaths.dart';
import 'package:coronavirus_tracker/repositories/deaths_repository.dart';
import 'package:mobx/mobx.dart';
part 'deaths_controller.g.dart';

class DeathController = _DeathControllerBase with _$DeathController;

abstract class _DeathControllerBase with Store {
  DeathsRepository _deathsRepository;

  _DeathControllerBase() {
    _deathsRepository = DeathsRepository();
  }

  @observable
  ObservableList<Deaths> listDeaths;

  @computed
  bool get isDataDeaths => listDeaths != null;

  @computed
  int get getDataDeaths => listDeaths[0].data;

  @action
  loadDeaths() async {
    listDeaths = ObservableList<Deaths>.of(await _deathsRepository.getDeaths());
  }
}