import 'package:flutter/material.dart';
import 'package:nac3_mobx/views_models/planet_viewmodel.dart';

class PlanetListView extends StatelessWidget {
  const PlanetListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    _dialog() {
      showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              title: const Text("Inserir um planeta"),
              actions: [
                FlatButton(onPressed: () {}, child: const Text('Salvar')),
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
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "nome do planeta",
                      ),
                    ),
                    const Spacer(),
                    TextField(
                      onChanged: (value) {},
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

    final planetViewModel = PlanetViewModel();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const TextField(
            decoration: InputDecoration(hintText: "Pesquisa"),
          ),
        ),
        body: Container(
          color: Colors.black12,
          height: size.height,
          width: size.width,
          child: Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: planetViewModel.listItens.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Column(
                      children: [
                        Text(planetViewModel.listItens[index].nome),
                        Text(planetViewModel.listItens[index].size.toString()),
                      ],
                    ),
                    trailing: IconButton(
                      color: Colors.redAccent,
                      icon: const Icon(Icons.delete),
                      onPressed: () {},
                    ),
                  );
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
