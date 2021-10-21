import 'package:mobx/mobx.dart';
part 'item_viewmodel.g.dart';

class ItemViewModel = _ItemViewModelBase with _$ItemViewModel;

abstract class _ItemViewModelBase with Store {
  _ItemViewModelBase({this.nome = "", this.size = ""});

  @observable
  String nome;

  @observable
  String size;

  @action
  setNome(String value) => nome = value;

  @action
  setSize(String value) => size = value;
}
