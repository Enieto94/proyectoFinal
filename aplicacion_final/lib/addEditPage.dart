import 'package:flutter/material.dart';
import 'dart:core';
import 'package:http/http.dart' as http;
import 'package:aplicacion_final/Dashboard.dart';

class AddEditPage extends StatefulWidget {
  final List<dynamic> list;
  final int index;
  AddEditPage({required this.list, required this.index});
  @override
  _AddEditPageState createState() => _AddEditPageState();
}

class _AddEditPageState extends State<AddEditPage> {
  TextEditingController juzgadoController = TextEditingController();
  TextEditingController radicadoController = TextEditingController();
  TextEditingController tipoProcesoController = TextEditingController();
  TextEditingController demandanteController = TextEditingController();
  TextEditingController demandadoController = TextEditingController();
  TextEditingController estadoController = TextEditingController();
  TextEditingController encargadoController = TextEditingController();

  bool editMode = false;

  addUpdateData() {
    if (editMode) {
      var url = Uri.parse('http://192.168.20.23/crud/edit.php');
      http.post(url, body: {
        'id': widget.list[widget.index]['id'],
        'juzgado': juzgadoController.text,
        'radicado': radicadoController.text,
        'tipoProceso': tipoProcesoController.text,
        'demandante': demandanteController.text,
        'demandado': demandadoController.text,
        'estado': estadoController.text,
        'encargado': encargadoController.text,
      });
    } else {
      var url = Uri.parse('http://192.168.20.23/crud/add.php');
      http.post(url, body: {
        'juzgado': juzgadoController.text,
        'radicado': radicadoController.text,
        'tipoProceso': tipoProcesoController.text,
        'demandante': demandanteController.text,
        'demandado': demandadoController.text,
        'estado': estadoController.text,
        'encargado': encargadoController.text,
      });
    }
  }

  addEditData() {
    var url = Uri.parse('http://localhost/crud/add.php');
    http.post(url, body: {
      'juzgado': juzgadoController.text,
      'radicado': radicadoController.text,
      'tipo_proceso': tipoProcesoController.text,
      'demandante': demandanteController.text,
      'demandado': demandadoController.text,
      'estado': estadoController.text,
      'encargado': encargadoController.text
    });
  }

  @override
  void initState() {
    juzgadoController = TextEditingController(text: '');
    radicadoController = TextEditingController(text: '');
    tipoProcesoController = TextEditingController(text: '');
    demandanteController = TextEditingController(text: '');
    demandadoController = TextEditingController(text: '');
    estadoController = TextEditingController(text: '');
    encargadoController = TextEditingController(text: '');

    if (widget.index != null) {
      editMode = true;
      juzgadoController =
          TextEditingController(text: widget.list[widget.index]['juzgado']);
      radicadoController =
          TextEditingController(text: widget.list[widget.index]['radicado']);
      tipoProcesoController = TextEditingController(
          text: widget.list[widget.index]['tipo_proceso']);
      demandanteController =
          TextEditingController(text: widget.list[widget.index]['demandante']);
      demandadoController =
          TextEditingController(text: widget.list[widget.index]['demandado']);
      estadoController =
          TextEditingController(text: widget.list[widget.index]['estado']);
      encargadoController =
          TextEditingController(text: widget.list[widget.index]['encargado']);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(editMode ? 'Update' : 'Add'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: juzgadoController,
                decoration: InputDecoration(labelText: 'Juzgado'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: radicadoController,
                decoration: InputDecoration(labelText: '# de Radicado'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tipoProcesoController,
                decoration: InputDecoration(labelText: 'Tipo de proceso'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: demandanteController,
                decoration: InputDecoration(labelText: 'Demandante'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: demandadoController,
                decoration: InputDecoration(labelText: 'Demandado'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: estadoController,
                decoration: InputDecoration(labelText: 'Estado'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: encargadoController,
                decoration: InputDecoration(labelText: 'Encargado'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: RaisedButton(
              color: Colors.amber,
              child: Text('Save'),
              onPressed: () {
                addEditData();
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
