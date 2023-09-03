import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui_clone/responsive/responsive_layout.dart';
import 'package:whatsapp_responsive_ui_clone/screens/layouts/mobile_layout.dart';
import 'package:whatsapp_responsive_ui_clone/screens/layouts/web_layout.dart';
import 'package:whatsapp_responsive_ui_clone/utils.dart/color_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.dark(
          primary: backgroundColor,
        ),
      ),
      home: const ResponsiveLayout(
        webScreenLayout: WebLayout(),
        mobileScreenLayout: MobileLayout(),
      ),
    );
  }
}
