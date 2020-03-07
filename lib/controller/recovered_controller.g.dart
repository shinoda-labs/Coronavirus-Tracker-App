// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovered_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RecoveredController on _RecoveredControllerBase, Store {
  Computed<bool> _$isDataRecoveredComputed;

  @override
  bool get isDataRecovered => (_$isDataRecoveredComputed ??=
          Computed<bool>(() => super.isDataRecovered))
      .value;

  final _$listRecoveredAtom =
      Atom(name: '_RecoveredControllerBase.listRecovered');

  @override
  ObservableList<Recovered> get listRecovered {
    _$listRecoveredAtom.context.enforceReadPolicy(_$listRecoveredAtom);
    _$listRecoveredAtom.reportObserved();
    return super.listRecovered;
  }

  @override
  set listRecovered(ObservableList<Recovered> value) {
    _$listRecoveredAtom.context.conditionallyRunInAction(() {
      super.listRecovered = value;
      _$listRecoveredAtom.reportChanged();
    }, _$listRecoveredAtom, name: '${_$listRecoveredAtom.name}_set');
  }

  final _$loadRecoveredAsyncAction = AsyncAction('loadRecovered');

  @override
  Future loadRecovered() {
    return _$loadRecoveredAsyncAction.run(() => super.loadRecovered());
  }

  @override
  String toString() {
    final string =
        'listRecovered: ${listRecovered.toString()},isDataRecovered: ${isDataRecovered.toString()}';
    return '{$string}';
  }
}
