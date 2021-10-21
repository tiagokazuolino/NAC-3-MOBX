import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nac3_mobx/views_models/item_viewmodel.dart';
import 'package:nac3_mobx/views_models/planet_viewmodel.dart';

class PlanetListView extends StatelessWidget {
  const PlanetListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final planetViewModel = PlanetViewModel();
    _dialog() {
      ItemViewModel model = ItemViewModel();
      showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              title: const Text("Inserir um planeta"),
              actions: [
                FlatButton(
                    onPressed: () {
                      planetViewModel.additem(model);
                      Navigator.pop(context);
                    },
                    child: const Text('Salvar')),
                FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancelar'))
              ],
              content: SizedBox(
                height: size.height * 0.3,
                child: Column(
                  children: [
                    const Spacer(),
                    TextField(
                      onChanged: model.setNome,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "nome do planeta",
                      ),
                    ),
                    const Spacer(),
                    TextField(
                      onChanged: model.setSize,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "tamanho do planeta",
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            );
          });
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const TextField(
            decoration: InputDecoration(hintText: "Pesquisa"),
          ),
          actions: [
            Observer(builder: (_) {
              return Text(planetViewModel.total.toString());
            })
          ],
        ),
        body: Container(
          color: Colors.black12,
          height: size.height,
          width: size.width,
          child: Expanded(
            child: Observer(builder: (_) {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: planetViewModel.listItens.length,
                  itemBuilder: (_, index) {
                    ItemViewModel model = planetViewModel.listItens[index];
                    return ListTile(
                      title: Column(
                        children: [
                          Text(model.nome),
                          Text(model.size),
                        ],
                      ),
                      trailing: IconButton(
                        color: Colors.redAccent,
                        icon: const Icon(Icons.delete),
                        onPressed: planetViewModel.removeitem(model),
                      ),
                    );
                  });
            }),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            _dialog();
          },
        ),
      ),
    );
  }
}
