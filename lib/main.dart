import 'package:flutter/material.dart';
import 'package:flutter_chat/src/routes/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      initialRoute: AppRoutes.loginRoute,
      routes: AppRoutes.routes,
    );
  }
}
