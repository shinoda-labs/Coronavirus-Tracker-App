import 'package:coronavirus_tracker/models/cases.dart';
import 'package:coronavirus_tracker/repositories/cases_repository.dart';
import 'package:flutter/cupertino.dart';
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

  @action
  loadCases() async {
    listCases = ObservableList<Cases>.of(await _casesRepository.getCases());
  }
}