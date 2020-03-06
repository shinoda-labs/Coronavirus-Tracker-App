import 'package:coronavirus_tracker/models/cases.dart';
import 'package:coronavirus_tracker/models/cases_suspected.dart';
import 'package:coronavirus_tracker/repositories/cases_repository.dart';
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

  @action
  loadCases() async {
    listCases = ObservableList<Cases>.of(await _casesRepository.getCases());
  }

  @action
  loadCasesSuspected() async {
    listCasesSuspected = ObservableList<CasesSuspected>.of(await _casesRepository.getCasesSuspected());
  }
}