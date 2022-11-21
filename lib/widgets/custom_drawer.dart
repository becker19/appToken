import 'package:flutter/material.dart';
import 'package:sesion9mod/routes/route.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/12/06/20/10/christmas-bauble-1079926_960_720.jpg'),
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Center(
                child: Text(
                  'BIENVENIDO',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            onTap: () {
              Navigator.pushReplacementNamed(context, MyRoutes.rHOME);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Ajustes'),
            onTap: () {
              Navigator.pushReplacementNamed(context, MyRoutes.rAJUSTES);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Perfil'),
            onTap: () {
              Navigator.pushReplacementNamed(context, MyRoutes.rPERFIL);
            },
          ),
        ],
      ),
    );
  }
}
