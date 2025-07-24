import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_website/app_routes.dart';

class ContactPageM extends StatefulWidget {
  const ContactPageM({super.key});

  @override
  State<ContactPageM> createState() => _ContactPageMState();
}

class _ContactPageMState extends State<ContactPageM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Text("Contact Page"),
      ),
    );
  }
}
