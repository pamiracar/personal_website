import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/app_routes.dart';
import 'package:personal_website/pages/contact/contact_page.dart';
import 'package:personal_website/pages/contact/contact_page_mobile.dart';
import 'package:personal_website/pages/development/development_page.dart';
import 'package:personal_website/pages/development/development_page_mobile.dart';
import 'package:personal_website/pages/home/home_page.dart';
import 'package:personal_website/pages/home/home_page_mobile.dart';
import 'package:personal_website/pages/responsive_gate.dart';
import 'package:personal_website/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pamir Açar',
      initialRoute: AppRoutes.GATE,
      theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: AppRoutes.HOME, page:() => HomePage(),),
        GetPage(name: AppRoutes.DEVELOPMENT, page:() => DevPage(),),
        GetPage(name: AppRoutes.CONTACT, page:() => ContactPage(),),
        GetPage(name: AppRoutes.HOME_M, page:() => HomePageM(),),
        GetPage(name: AppRoutes.DEVELOPMENT_M, page:() => DevPageM(),),
        GetPage(name: AppRoutes.CONTACT_M, page:() => ContactPageM(),),
        GetPage(name: AppRoutes.GATE, page:() => ResponsiveGate(),)
      ],
    );
  }
}
