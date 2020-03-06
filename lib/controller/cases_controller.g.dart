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

  final _$loadCasesAsyncAction = AsyncAction('loadCases');

  @override
  Future loadCases() {
    return _$loadCasesAsyncAction.run(() => super.loadCases());
  }

  @override
  String toString() {
    final string = 'listCases: ${listCases.toString()}';
    return '{$string}';
  }
}
