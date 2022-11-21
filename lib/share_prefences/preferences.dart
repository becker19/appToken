import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _img = '';
  static String _nombre = '';
  static String _apellido = '';
  static String _aldea = '';
  static String _cargo = '';
  static int _genero = 1;

  static bool _theme = false;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // GET & SET

  //IMG
  static String get img {
    return _prefs.getString('img') ?? _img;
  }

  static set img(String img) {
    _img = img;
    _prefs.setString('img', img);
  }

  //Nombres
  static String get nombre {
    return _prefs.getString('nombre') ?? _nombre;
  }

  static set nombre(String nombre) {
    _nombre = nombre;
    _prefs.setString('nombre', nombre);
  }

  //Apellido
  static String get apellido {
    return _prefs.getString('apellido') ?? _apellido;
  }

  static set apellido(String apellido) {
    _apellido = apellido;
    _prefs.setString('apellido', apellido);
  }

  //Aldea
  static String get aldea {
    return _prefs.getString('aldea') ?? _aldea;
  }

  static set aldea(String aldea) {
    _aldea = aldea;
    _prefs.setString('aldea', aldea);
  }

  //Cargo
  static String get cargo {
    return _prefs.getString('cargo') ?? _cargo;
  }

  static set cargo(String cargo) {
    _cargo = cargo;
    _prefs.setString('cargo', cargo);
  }

  //Genero
  static int get genero {
    return _prefs.getInt('genero') ?? _genero;
  }

  static set genero(int value) {
    _genero = value;
    _prefs.setInt('genero', value);
  }

  //Theme
  static bool get theme {
    return _prefs.getBool('theme') ?? _theme;
  }

  static set theme(bool value) {
    _theme = value;
    _prefs.setBool('theme', value);
  }
}
