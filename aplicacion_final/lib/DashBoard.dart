import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Administración de procesos'),
      ),
      body: Center(
        child: Text('Admón De procesos.'),
      ),
    );
  }
}
