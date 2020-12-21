import 'package:flutter/material.dart';
import 'package:foodies/data/categories_data.dart';
import 'package:foodies/provider/logo_provider.dart';
import 'package:foodies/screens/splash/splash_screen.dart';
import 'package:foodies/utils/routes.dart';
import 'package:foodies/utils/theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_config/flutter_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (context) => LogoProvider(),
        ),
        ChangeNotifierProvider(
          builder: (context) => CategoriesData(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: theme(),
        // home: SplashScreen(),
        initialRoute: SplashScreen.routeName,
        routes: routes,
      ),
    );
  }
}
