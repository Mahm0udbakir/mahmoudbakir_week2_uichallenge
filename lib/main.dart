import 'package:flutter/material.dart';
import 'package:mahmoudbakir_week2_uichallenge/core/routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Ui Challenge',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
