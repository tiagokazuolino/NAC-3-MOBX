// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ItemViewModel on _ItemViewModelBase, Store {
  final _$nomeAtom = Atom(name: '_ItemViewModelBase.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$sizeAtom = Atom(name: '_ItemViewModelBase.size');

  @override
  double get size {
    _$sizeAtom.reportRead();
    return super.size;
  }

  @override
  set size(double value) {
    _$sizeAtom.reportWrite(value, super.size, () {
      super.size = value;
    });
  }

  final _$_ItemViewModelBaseActionController =
      ActionController(name: '_ItemViewModelBase');

  @override
  dynamic setNome(String value) {
    final _$actionInfo = _$_ItemViewModelBaseActionController.startAction(
        name: '_ItemViewModelBase.setNome');
    try {
      return super.setNome(value);
    } finally {
      _$_ItemViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSize(double value) {
    final _$actionInfo = _$_ItemViewModelBaseActionController.startAction(
        name: '_ItemViewModelBase.setSize');
    try {
      return super.setSize(value);
    } finally {
      _$_ItemViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
size: ${size}
    ''';
  }
}
