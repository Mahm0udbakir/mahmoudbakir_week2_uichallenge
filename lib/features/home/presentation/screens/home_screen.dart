import 'package:flutter/material.dart';
import 'package:mahmoudbakir_week2_uichallenge/features/home/presentation/screens/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Home Content',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
