import 'package:flutter/material.dart';
import 'package:personal_website/pages/development/development_page.dart';
import 'package:personal_website/pages/development/development_page_mobile.dart';
import 'package:personal_website/pages/responsive_layout.dart';

class Development extends StatefulWidget {
  const Development({super.key});

  @override
  State<Development> createState() => _DevelopmentState();
}

class _DevelopmentState extends State<Development> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileBody: DevPageM(), desktopBody: DevPage());
  }
}
