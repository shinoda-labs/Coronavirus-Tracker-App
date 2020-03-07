import 'package:coronavirus_tracker/models/recovered.dart';
import 'package:coronavirus_tracker/repositories/recovered_repository.dart';
import 'package:mobx/mobx.dart';
part 'recovered_controller.g.dart';

class RecoveredController = _RecoveredControllerBase with _$RecoveredController;

abstract class _RecoveredControllerBase with Store {
  RecoveredRepository _recoveredRepository;

  _RecoveredControllerBase() {
    _recoveredRepository = RecoveredRepository();
  }

  @observable
  ObservableList<Recovered> listRecovered;

  @action
  loadRecovered() async {
    listRecovered = ObservableList<Recovered>.of(await _recoveredRepository.getRecovered());
  }
}