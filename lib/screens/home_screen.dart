import 'package:flutter/material.dart';
import 'package:sesion9mod/share_prefences/preferences.dart';

import 'package:sesion9mod/widgets/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Almacenamiento'),
        centerTitle: true,
      ),
      drawer: const CustomDrawerWidget(),
      body: const Center(
        child: Text('BIENVENIDO'),
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     (Preferences.img == '')
        //         ? const CircleAvatar(
        //             radius: 80.0,
        //             child: Icon(
        //               Icons.photo,
        //               size: 50,
        //             ),
        //           )
        //         : CircleAvatar(
        //             radius: 80.0,
        //             backgroundImage: NetworkImage(Preferences.img)),
        //     Text('Mi nombre es: ${Preferences.nombre}'),
        //     Text('Apellido: ${Preferences.apellido}'),
        //     Text('Aldea: ${Preferences.aldea}'),
        //     Text('Cargo: ${Preferences.cargo}'),
        //     (Preferences.genero != 1)
        //         ? const Text('Genero: Femenino')
        //         : const Text('Genero: Masculino'),
        //   ],
        // ),
      ),
    );
  }
}
