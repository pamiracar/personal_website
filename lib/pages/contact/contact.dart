import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_website/app_routes.dart';
import 'package:personal_website/pages/contact/contact_page.dart';
import 'package:personal_website/pages/contact/contact_page_mobile.dart';
import 'package:personal_website/pages/responsive_gate.dart';
import 'package:personal_website/pages/responsive_layout.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileBody: ContactPageM(), desktopBody: ContactPage());
  }
}
