// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cases_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CasesController on _CasesControllerBase, Store {
  final _$listCasesAtom = Atom(name: '_CasesControllerBase.listCases');

  @override
  ObservableList<Cases> get listCases {
    _$listCasesAtom.context.enforceReadPolicy(_$listCasesAtom);
    _$listCasesAtom.reportObserved();
    return super.listCases;
  }

  @override
  set listCases(ObservableList<Cases> value) {
    _$listCasesAtom.context.conditionallyRunInAction(() {
      super.listCases = value;
      _$listCasesAtom.reportChanged();
    }, _$listCasesAtom, name: '${_$listCasesAtom.name}_set');
  }

  final _$listCasesSuspectedAtom =
      Atom(name: '_CasesControllerBase.listCasesSuspected');

  @override
  ObservableList<CasesSuspected> get listCasesSuspected {
    _$listCasesSuspectedAtom.context
        .enforceReadPolicy(_$listCasesSuspectedAtom);
    _$listCasesSuspectedAtom.reportObserved();
    return super.listCasesSuspected;
  }

  @override
  set listCasesSuspected(ObservableList<CasesSuspected> value) {
    _$listCasesSuspectedAtom.context.conditionallyRunInAction(() {
      super.listCasesSuspected = value;
      _$listCasesSuspectedAtom.reportChanged();
    }, _$listCasesSuspectedAtom, name: '${_$listCasesSuspectedAtom.name}_set');
  }

  final _$loadCasesAsyncAction = AsyncAction('loadCases');

  @override
  Future loadCases() {
    return _$loadCasesAsyncAction.run(() => super.loadCases());
  }

  final _$loadCasesSuspectedAsyncAction = AsyncAction('loadCasesSuspected');

  @override
  Future loadCasesSuspected() {
    return _$loadCasesSuspectedAsyncAction
        .run(() => super.loadCasesSuspected());
  }

  @override
  String toString() {
    final string =
        'listCases: ${listCases.toString()},listCasesSuspected: ${listCasesSuspected.toString()}';
    return '{$string}';
  }
}
