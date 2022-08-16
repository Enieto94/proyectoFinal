import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:aplicacion_final/addEditPage.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<dynamic> getData() async {
    var url = Uri.parse('http://192.168.20.23/get.php');
    var response = await http.get(url);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin DashBoard'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewWidget(),
            ),
          );
        },
      ),
      body: FutureBuilder<dynamic>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
                ? ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      List list = snapshot.data;
                      return ListTile(
                        leading: GestureDetector(
                            child: Icon(Icons.edit),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddEditPage(
                                            index: index,
                                            list: list,
                                          )));
                              debugPrint('Edit Clicked');
                            }),
                        title: Text(list[index]['juzgado']),
                        subtitle: Text(list[index]['radicado']),
                        trailing: GestureDetector(
                            child: Icon(Icons.delete),
                            onTap: () {
                              setState(() {
                                var url = Uri.parse(
                                    'http://192.168.20.23/crud/delete.php');
                                http.post(url, body: {
                                  'id': list[index]['id'],
                                });
                              });
                              debugPrint('Delete Clicked');
                            }),
                      );
                    })
                : CircularProgressIndicator();
          }),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NewWidget();
  }
}
