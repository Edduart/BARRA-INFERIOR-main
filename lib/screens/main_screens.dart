import 'package:flutter/material.dart';
import 'package:flutter_application_barra_inferior/view/pantalla_home.dart';
import 'package:flutter_application_barra_inferior/view/pantalla_search.dart';
import 'package:flutter_application_barra_inferior/view/pantalla_users.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreensState();
}


class _MainScreensState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    PantallaHome(),
    PantallaSearch(),
    PantallaUsers()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).colorScheme;

    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                backgroundColor: Colors.lightBlue,
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                backgroundColor: Colors.lightBlueAccent,
                label: 'Buscar'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                backgroundColor: Colors.blue,
                label: 'Perfil'),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 30,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
