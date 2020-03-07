// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deaths_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DeathController on _DeathControllerBase, Store {
  Computed<bool> _$isDataDeathsComputed;

  @override
  bool get isDataDeaths =>
      (_$isDataDeathsComputed ??= Computed<bool>(() => super.isDataDeaths))
          .value;

  final _$listDeathsAtom = Atom(name: '_DeathControllerBase.listDeaths');

  @override
  ObservableList<Deaths> get listDeaths {
    _$listDeathsAtom.context.enforceReadPolicy(_$listDeathsAtom);
    _$listDeathsAtom.reportObserved();
    return super.listDeaths;
  }

  @override
  set listDeaths(ObservableList<Deaths> value) {
    _$listDeathsAtom.context.conditionallyRunInAction(() {
      super.listDeaths = value;
      _$listDeathsAtom.reportChanged();
    }, _$listDeathsAtom, name: '${_$listDeathsAtom.name}_set');
  }

  final _$loadDeathsAsyncAction = AsyncAction('loadDeaths');

  @override
  Future loadDeaths() {
    return _$loadDeathsAsyncAction.run(() => super.loadDeaths());
  }

  @override
  String toString() {
    final string =
        'listDeaths: ${listDeaths.toString()},isDataDeaths: ${isDataDeaths.toString()}';
    return '{$string}';
  }
}
