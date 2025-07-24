import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_website/app_routes.dart';
import 'package:personal_website/pages/development/development_page.dart';
import 'package:personal_website/pages/development/development_page_mobile.dart';
import 'package:personal_website/pages/home/glass.dart';
import 'package:personal_website/pages/responsive_gate.dart';
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
