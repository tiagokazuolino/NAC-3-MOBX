import 'package:mobx/mobx.dart';
import 'item_viewmodel.dart';
part 'planet_viewmodel.g.dart';

class PlanetViewModel = _PlanetViewModelBase with _$PlanetViewModel;

abstract class _PlanetViewModelBase with Store {
  @observable
  List<ItemViewModel> listItens = [
    ItemViewModel(nome: "a", size: 5.0),
    ItemViewModel(nome: "b", size: 5.0),
    ItemViewModel(nome: "teste", size: 5.0),
    ItemViewModel(nome: "teste", size: 5.0),
    ItemViewModel(nome: "teste", size: 5.0),
    ItemViewModel(nome: "teste", size: 5.0),
    ItemViewModel(nome: "teste", size: 5.0),
  ];
  @action
  additem(ItemViewModel model) {
    listItens.add(model);
  }
}
