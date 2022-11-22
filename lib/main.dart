import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sesion9mod/providers/provider_login.dart';
import 'package:sesion9mod/providers/provider_theme.dart';
import 'package:sesion9mod/routes/route.dart';
import 'package:sesion9mod/share_prefences/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => ProviderTheme(isDarkMode: Preferences.theme),
      ),
      ChangeNotifierProvider(
        create: (_) => ProviderLogin(),
      ),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      // initialRoute: HomeScreen.routerName,
      onGenerateRoute: MyRoutes.generateRoute,
      initialRoute: MyRoutes.rLOGIN,
      // routes: {
      //   HomeScreen.routerName: (_) => const HomeScreen(),
      //   AjusteScreen.routerName: (_) => const AjusteScreen(),
      //   PerfilScreen.routerName: (_) => const BlurScreen(),
      // },
      theme: Provider.of<ProviderTheme>(context).currentTheme,

      // ThemeData(
      //   useMaterial3: true,
      //   primarySwatch: Colors.blue,
      // ),

      // home: const HomeScreen(),
    );
  }
}
