import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        //home: ListView1Screen(),

        initialRoute: AppRouter.initialRoute,
        routes: AppRouter.getAppRoutes(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        theme: AppTheme.darkTheme);
  }
}
