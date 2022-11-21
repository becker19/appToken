import 'package:flutter/material.dart';
import 'package:sesion9mod/screens/index.dart';
// import 'package:sesion9mod/widgets/custom_drawer.dart';

class MyRoutes {
  static const String rHOME = '/inicio';
  static const String rAJUSTES = '/ajuste';
  static const String rPERFIL = '/perfil';
  static const String rDRAWER = '/drawer';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ('/inicio'):
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case ('/ajuste'):
        return MaterialPageRoute(builder: (_) => const AjusteScreen());
      case ('/perfil'):
        return MaterialPageRoute(builder: (_) => const PerfilScreen());
      // case ('/drawer'):
      //   return MaterialPageRoute(builder: (_) => const CustomDrawerWidget());
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      // return MaterialPageRoute(
      //   builder: (_) => const Scaffold(
      //     body: Center(
      //       child: Text('No se encuentra Ruta'),
      //     ),
      //   ),
      // );
    }
  }
}
