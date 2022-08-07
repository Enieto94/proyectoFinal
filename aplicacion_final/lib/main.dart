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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _closeDrawer,
              child: const Text('X'),
            ),
            NavigationBar(
              destinations: const [
                NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                NavigationDestination(
                    icon: Icon(Icons.person), label: 'Profile'),
              ],
              onDestinationSelected: (int index) {
                setState(() {
                  currentPage = index;
                });
              },
              selectedIndex: currentPage,
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
      drawerEnableOpenDragGesture: false,
    );
  }
}
