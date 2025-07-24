import 'package:flutter/material.dart';
import 'package:personal_website/pages/home/home.dart';
import 'package:personal_website/pages/home/home_page_mobile.dart';

class ResponsiveGate extends StatefulWidget {
  final Widget mobile;
  final Widget desktop;
  const ResponsiveGate({super.key, required this.mobile, required this.desktop});

  @override
  State<ResponsiveGate> createState() => _ResponsiveGateState();
}

class _ResponsiveGateState extends State<ResponsiveGate> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder:(context, constraints) {
      if (constraints.maxWidth <= 700) { // Mobile device
        return widget.mobile;
      } else { //Desktop or tablet
      return widget.mobile;
      }
    },);
  }
}
