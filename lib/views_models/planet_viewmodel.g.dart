// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PlanetViewModel on _PlanetViewModelBase, Store {
  Computed<int>? _$totalComputed;

  @override
  int get total => (_$totalComputed ??=
          Computed<int>(() => super.total, name: '_PlanetViewModelBase.total'))
      .value;

  final _$listItensAtom = Atom(name: '_PlanetViewModelBase.listItens');

  @override
  ObservableList<ItemViewModel> get listItens {
    _$listItensAtom.reportRead();
    return super.listItens;
  }

  @override
  set listItens(ObservableList<ItemViewModel> value) {
    _$listItensAtom.reportWrite(value, super.listItens, () {
      super.listItens = value;
    });
  }

  final _$_PlanetViewModelBaseActionController =
      ActionController(name: '_PlanetViewModelBase');

  @override
  dynamic additem(ItemViewModel model) {
    final _$actionInfo = _$_PlanetViewModelBaseActionController.startAction(
        name: '_PlanetViewModelBase.additem');
    try {
      return super.additem(model);
    } finally {
      _$_PlanetViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeitem(ItemViewModel model) {
    final _$actionInfo = _$_PlanetViewModelBaseActionController.startAction(
        name: '_PlanetViewModelBase.removeitem');
    try {
      return super.removeitem(model);
    } finally {
      _$_PlanetViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listItens: ${listItens},
total: ${total}
    ''';
  }
}
