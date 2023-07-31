import 'package:flutter/material.dart';
import 'package:whatsapp_ui_responsive/color.dart';
import 'package:whatsapp_ui_responsive/responsive/responsive_layout.dart';
import 'package:whatsapp_ui_responsive/screens/mobile_screen_layout.dart';
import 'package:whatsapp_ui_responsive/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout()),
    );
  }
}
