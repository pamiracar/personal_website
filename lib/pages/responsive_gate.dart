import 'package:flutter/material.dart';
import 'package:personal_website/pages/home/home_page.dart';
import 'package:personal_website/pages/home/home_page_mobile.dart';

class ResponsiveGate extends StatefulWidget {
  const ResponsiveGate({super.key});

  @override
  State<ResponsiveGate> createState() => _ResponsiveGateState();
}

class _ResponsiveGateState extends State<ResponsiveGate> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder:(context, constraints) {
      if (constraints.maxWidth <= 600) { // Mobile device
        return HomePageM();
      } else { //Desktop or tablet
      return HomePage();
      }
    },);
  }
}
