import 'package:flutter/material.dart';

class PantallaUsers extends StatefulWidget {
  const PantallaUsers({super.key});

  @override
  State<PantallaUsers> createState() => _PantallaUsersState();
}

class _PantallaUsersState extends State<PantallaUsers> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Navegacion entre pantallas',
              style: TextStyle(color: Colors.white)),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Buscar: Segunda Pantalla'),
            ],
          ),
        ));
  }
}
