// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cases_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CasesController on _CasesControllerBase, Store {
  Computed<bool> _$isDataCasesComputed;

  @override
  bool get isDataCases =>
      (_$isDataCasesComputed ??= Computed<bool>(() => super.isDataCases)).value;
  Computed<bool> _$isDataCasesSuspectedComputed;

  @override
  bool get isDataCasesSuspected => (_$isDataCasesSuspectedComputed ??=
          Computed<bool>(() => super.isDataCasesSuspected))
      .value;
  Computed<bool> _$isDataCasesConfirmedComputed;

  @override
  bool get isDataCasesConfirmed => (_$isDataCasesConfirmedComputed ??=
          Computed<bool>(() => super.isDataCasesConfirmed))
      .value;
  Computed<String> _$getDateComputed;

  @override
  String get getDate =>
      (_$getDateComputed ??= Computed<String>(() => super.getDate)).value;
  Computed<int> _$getDataCasesComputed;

  @override
  int get getDataCases =>
      (_$getDataCasesComputed ??= Computed<int>(() => super.getDataCases))
          .value;
  Computed<int> _$getDataCasesSuspectedComputed;

  @override
  int get getDataCasesSuspected => (_$getDataCasesSuspectedComputed ??=
          Computed<int>(() => super.getDataCasesSuspected))
      .value;
  Computed<int> _$getDataCasesConfirmedComputed;

  @override
  int get getDataCasesConfirmed => (_$getDataCasesConfirmedComputed ??=
          Computed<int>(() => super.getDataCasesConfirmed))
      .value;

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

  final _$listCasesConfirmedAtom =
      Atom(name: '_CasesControllerBase.listCasesConfirmed');

  @override
  ObservableList<CasesConfirmed> get listCasesConfirmed {
    _$listCasesConfirmedAtom.context
        .enforceReadPolicy(_$listCasesConfirmedAtom);
    _$listCasesConfirmedAtom.reportObserved();
    return super.listCasesConfirmed;
  }

  @override
  set listCasesConfirmed(ObservableList<CasesConfirmed> value) {
    _$listCasesConfirmedAtom.context.conditionallyRunInAction(() {
      super.listCasesConfirmed = value;
      _$listCasesConfirmedAtom.reportChanged();
    }, _$listCasesConfirmedAtom, name: '${_$listCasesConfirmedAtom.name}_set');
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

  final _$loadCasesConfirmedAsyncAction = AsyncAction('loadCasesConfirmed');

  @override
  Future loadCasesConfirmed() {
    return _$loadCasesConfirmedAsyncAction
        .run(() => super.loadCasesConfirmed());
  }

  @override
  String toString() {
    final string =
        'listCases: ${listCases.toString()},listCasesSuspected: ${listCasesSuspected.toString()},listCasesConfirmed: ${listCasesConfirmed.toString()},isDataCases: ${isDataCases.toString()},isDataCasesSuspected: ${isDataCasesSuspected.toString()},isDataCasesConfirmed: ${isDataCasesConfirmed.toString()},getDate: ${getDate.toString()},getDataCases: ${getDataCases.toString()},getDataCasesSuspected: ${getDataCasesSuspected.toString()},getDataCasesConfirmed: ${getDataCasesConfirmed.toString()}';
    return '{$string}';
  }
}
