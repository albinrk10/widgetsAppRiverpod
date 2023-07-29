import 'package:flutter/material.dart';
import 'package:widgets_albin/config/theme/app_theme.dart';
import 'config/router/app_routter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 0).getTheme(),
       
        
        );
  }
}
