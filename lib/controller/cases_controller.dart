import 'package:coronavirus_tracker/models/cases.dart';
import 'package:coronavirus_tracker/models/cases_confirmed.dart';
import 'package:coronavirus_tracker/models/cases_suspected.dart';
import 'package:coronavirus_tracker/repositories/cases_repository.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
part 'cases_controller.g.dart';

class CasesController = _CasesControllerBase with _$CasesController;

abstract class _CasesControllerBase with Store {
  CasesRepository _casesRepository;

  _CasesControllerBase() {
    _casesRepository = CasesRepository();
  }

  @observable
  ObservableList<Cases> listCases;

  @observable
  ObservableList<CasesSuspected> listCasesSuspected;

  @observable
  ObservableList<CasesConfirmed> listCasesConfirmed;

  @computed
  bool get isDataCases => listCases != null;

  @computed
  bool get isDataCasesSuspected => listCasesSuspected != null;

  @computed
  bool get isDataCasesConfirmed => listCasesConfirmed != null;

  @computed
  String get getDate => 'Last Update: ${_formatDate(listCases[0].date)}';

  @computed
  int get getDataCases => listCases[0].cases;

  @computed
  int get getDataCasesSuspected => listCasesSuspected[0].data;

  @computed
  int get getDataCasesConfirmed => listCasesConfirmed[0].data;

  @action
  loadCases() async {
    listCases = ObservableList<Cases>.of(await _casesRepository.getCases());
  }

  @action
  loadCasesSuspected() async {
    listCasesSuspected = ObservableList<CasesSuspected>.of(
        await _casesRepository.getCasesSuspected());
  }

  @action
  loadCasesConfirmed() async {
    listCasesConfirmed = ObservableList<CasesConfirmed>.of(
        await _casesRepository.getCasesConfirmed());
  }

  String _formatDate(String date) {
    List<String> args = date.split('');
    return '${args[8]}${args[9]}/${args[5]}${args[6]}/${args[0]}${args[1]}${args[2]}${args[3]} ${args[11]}${args[12]}:${args[14]}${args[15]}:${args[17]}${args[18]}';
  }
}
