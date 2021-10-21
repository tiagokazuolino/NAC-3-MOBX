// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PlanetViewModel on _PlanetViewModelBase, Store {
  final _$listItensAtom = Atom(name: '_PlanetViewModelBase.listItens');

  @override
  List<ItemViewModel> get listItens {
    _$listItensAtom.reportRead();
    return super.listItens;
  }

  @override
  set listItens(List<ItemViewModel> value) {
    _$listItensAtom.reportWrite(value, super.listItens, () {
      super.listItens = value;
    });
  }

  @override
  String toString() {
    return '''
listItens: ${listItens}
    ''';
  }
}
