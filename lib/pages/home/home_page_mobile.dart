import 'package:flutter/material.dart';

class HomePageM extends StatefulWidget {
  const HomePageM({super.key});

  @override
  State<HomePageM> createState() => _HomePageMState();
}

class _HomePageMState extends State<HomePageM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text("Mobile Device"),
      ),
    );
  }
}
