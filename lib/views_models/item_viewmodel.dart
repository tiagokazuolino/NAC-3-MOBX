import 'package:mobx/mobx.dart';
part 'item_viewmodel.g.dart';

class ItemViewModel = _ItemViewModelBase with _$ItemViewModel;

abstract class _ItemViewModelBase with Store {
  _ItemViewModelBase({required this.nome, required this.size});

  @observable
  String nome = "";

  @observable
  double size = 0.0;

  @action
  setNome(String value) => nome = value;

  @action
  setSize(double value) => size = value;
}
