import 'dart:ui';

import 'package:aplicacion_final/learn_flutter_page.dart';
import 'package:flutter/material.dart';
import 'package:aplicacion_final/home_page.dart';
import 'package:aplicacion_final/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = [HomePage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    void _closeDrawer() {
      Navigator.of(context).pop();
    }

    return Scaffold(
      appBar: AppBar(title: const Text('JuzgadoApp')),
      body: pages[currentPage],
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ElevatedButton(
              onPressed: _closeDrawer,
              child: const Text('X'),
            ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text('Listado de procesos'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => LearnFlutterPage()));
                }),
          ],
        ),
      ),
      drawerEnableOpenDragGesture: false,
    );
  }
}
