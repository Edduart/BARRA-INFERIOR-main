import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import './show_dialog.dart';
//import 'package:flutter_application_barra_inferior/view/pantalla_users.dart';

class PantallaHome extends StatefulWidget {
  const PantallaHome({super.key});

  @override
  State<PantallaHome> createState() => _PantallaHomeState();
}

class _PantallaHomeState extends State<PantallaHome> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text('Home: Bienvenido'),
                  CachedNetworkImage(
                    imageUrl:
                        "https://scontent-bog2-2.xx.fbcdn.net/v/t39.30808-6/449705135_25970164585961767_8534301318021499562_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=aa7b47&_nc_ohc=cJXiYuWQF0wQ7kNvgEQ0kKk&_nc_ht=scontent-bog2-2.xx&oh=00_AYB2LvRvmwcV_5n1g8ZlU1kVByNYJvOtzAqvuWVyTlEE_A&oe=668AB09E",
                    width: 600,
                    height: 450,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  DialogoSalir.alert(context,
                      title: "Pregunta!!!",
                      description: "¿ Desea Salir de la Aplicación?",
                      icono: 'question');

                  /*Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const PantallaSearch();
                  }));*/
                },
                child: const Text('Salir'),
              ),
            ],
          ),
        ));
  }
}
