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
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Perfil: Tercera Pantalla'),
          ],
        ),
      ),
    );
  }
}
