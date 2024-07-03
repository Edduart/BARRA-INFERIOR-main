import 'package:flutter/material.dart';

class PantallaSearch extends StatefulWidget {
  const PantallaSearch({super.key});

  @override
  State<PantallaSearch> createState() => _PantallaSearchState();
}

class _PantallaSearchState extends State<PantallaSearch> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Navegacion entre pantallas'),
          ),
          body: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Buscar: Segunda Pantalla'),
              ],
            ),
          ),
        ),
        onWillPop: () async {
          return false;
        });
  }
}
