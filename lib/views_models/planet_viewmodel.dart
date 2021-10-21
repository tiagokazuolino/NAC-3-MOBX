import 'package:mobx/mobx.dart';
import 'item_viewmodel.dart';
part 'planet_viewmodel.g.dart';

class PlanetViewModel = _PlanetViewModelBase with _$PlanetViewModel;

abstract class _PlanetViewModelBase with Store {
  @observable
  ObservableList<ItemViewModel> listItens = [
    ItemViewModel(nome: "Marte", size: "5550"),
    ItemViewModel(nome: "plutao", size: "5550"),
    ItemViewModel(nome: "Terra", size: "5550"),
  ].asObservable();

  @action
  additem(ItemViewModel model) {
    listItens.add(model);
  }

  @action
  removeitem(ItemViewModel model) {
    listItens.removeWhere((element) => element.nome == model.nome);
  }
}
