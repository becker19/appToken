import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sesion9mod/providers/provider_theme.dart';
import 'package:sesion9mod/share_prefences/preferences.dart';
import 'package:sesion9mod/widgets/index.dart';

class AjusteScreen extends StatefulWidget {
  const AjusteScreen({super.key});

  @override
  State<AjusteScreen> createState() => _AjusteScreenState();
}

class _AjusteScreenState extends State<AjusteScreen> {
  final imgController = TextEditingController(text: Preferences.img);
  final nombreController = TextEditingController(text: Preferences.nombre);
  final apellidoController = TextEditingController(text: Preferences.apellido);
  final aldeaController = TextEditingController(text: Preferences.aldea);
  final cargoController = TextEditingController(text: Preferences.cargo);

  @override
  Widget build(BuildContext context) {
    save() {
      Preferences.img = imgController.text;
      Preferences.nombre = nombreController.text;
      Preferences.apellido = apellidoController.text;
      Preferences.aldea = aldeaController.text;
      Preferences.cargo = cargoController.text;
      print(imgController.text);
      setState(() {});
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajustes'),
        centerTitle: true,
        actions: [
          Switch.adaptive(
            value: Preferences.theme,
            onChanged: (value) {
              Preferences.theme = value;
              final themeP = Provider.of<ProviderTheme>(context, listen: false);
              value ? themeP.setOscuro() : themeP.setClaro();
              setState(() {});
            },
          )
        ],
      ),
      drawer: const CustomDrawerWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomTextFieldWidget(
                  controller: imgController,
                  // initialValue: Preferences.img,
                  keyboardType: TextInputType.text,
                  hintText: 'Imagen',
                  prefixIcon: const Icon(
                    Icons.photo,
                    color: Colors.grey,
                  ),
                  // onChanged: (value) {
                  //   Preferences.img = value;
                  //   setState(() {});
                  // },
                ),
                CustomTextFieldWidget(
                  controller: nombreController,
                  // initialValue: Preferences.nombre,
                  keyboardType: TextInputType.name,
                  hintText: 'Nombre',
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  // onChanged: (value) {
                  //   Preferences.nombre = value;
                  //   setState(() {});
                  // },
                ),
                CustomTextFieldWidget(
                  controller: apellidoController,
                  // initialValue: Preferences.apellido,
                  keyboardType: TextInputType.name,
                  hintText: 'Apellido',
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  // onChanged: (value) {
                  //   Preferences.apellido = value;
                  //   setState(() {});
                  // },
                ),
                CustomTextFieldWidget(
                  controller: aldeaController,
                  // initialValue: Preferences.aldea,
                  keyboardType: TextInputType.name,
                  hintText: 'Aldea',
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  // onChanged: (value) {
                  //   Preferences.aldea = value;
                  //   setState(() {});
                  // },
                ),
                CustomTextFieldWidget(
                  controller: cargoController,
                  // initialValue: Preferences.cargo,
                  keyboardType: TextInputType.name,
                  hintText: 'Cargo',
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  // onChanged: (value) {
                  //   Preferences.cargo = value;
                  //   setState(() {});
                  // },
                ),
                const Divider(),
                RadioListTile<int>(
                  activeColor: Colors.green,
                  value: 1,
                  groupValue: Preferences.genero,
                  title: const Text('Masculino'),
                  onChanged: (value) {
                    Preferences.genero = value ?? 1;
                    setState(() {});
                  },
                ),
                RadioListTile<int>(
                  activeColor: Colors.green,
                  value: 2,
                  groupValue: Preferences.genero,
                  title: const Text('Femenino'),
                  onChanged: (value) {
                    Preferences.genero = value ?? 2;
                    setState(() {});
                  },
                ),

                // SwitchListTile.adaptive(
                //   value: Preferences.theme,
                //   title: const Text('THEME'),
                //   onChanged: (value) {
                //     Preferences.theme = value;
                //     final themeP =
                //         Provider.of<ProviderTheme>(context, listen: false);
                //     value ? themeP.setOscuro() : themeP.setClaro();
                //     setState(() {});
                //   },
                // ),

                SizedBox(
                  height: 50,
                  width: 200,
                  child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.green,
                      child: const Text(
                        'Guardar',
                        style: TextStyle(color: Colors.white, fontSize: 26),
                      ),
                      onPressed: () {
                        save();
                        setState(() {});
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
