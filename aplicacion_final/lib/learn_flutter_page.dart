import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('JuzgadosApp'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          actions: [
            IconButton(
              onPressed: () {
                debugPrint('Actions');
              },
              icon: Icon(Icons.info_outline),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blue,
              width: double.infinity,
              child: const Text(
                'Listado de Procesos',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Table(
                border: TableBorder.all(width: 2.0, color: Colors.black),
                children: [
                  TableRow(children: [
                    Text(
                      "Juzgado",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "# Radicado",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Tipo de proceso",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Demandante",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Demandado",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Estado",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Encargado",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Actions",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ]),
                  TableRow(children: [
                    Text("Zipaquirá"),
                    Text("13651320132"),
                    Text("Familia"),
                    Text("Edwin Nieto"),
                    Text("Johan Paramo"),
                    Text("Pendiente"),
                    Text("Nombre Abogado"),
                    Icon(Icons.edit),
                    Icon(Icons.delete),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Floating Action Button');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
