import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:aplicacion_final/learn_flutter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Image.asset('images/login-user-icon.png', width: 150, height: 150),
            const SizedBox(
              height: 50,
              width: 50,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Ingrese su Usuario'),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Ingrese su clave',
              ),
            ),
            const SizedBox(
              height: 50,
              width: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const LearnFlutterPage();
                  }),
                );
              },
              child: const Text('INICIAR SESION'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                fixedSize: const Size(150, 70),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ),

      // Disable opening the drawer with a swipe gesture.
    );
  }
}
