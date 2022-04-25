import 'package:flutter/material.dart';

import 'package:components_app/router/app_router.dart';
import 'package:components_app/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRouter.initialRoute,
      routes: AppRouter.buildRoute(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      

      theme: AppTheme.lightTheme,
    );
  }
}
