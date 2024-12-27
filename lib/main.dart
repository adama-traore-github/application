import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/reset_password_screen.dart';
import 'screens/contact_info_screen.dart';
import 'screens/establishment_info_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safrimat Immo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) =>  LoginScreen(),
        '/reset-password': (context) =>  ResetPasswordScreen(),
        '/contact-info': (context) =>  ContactInfoScreen(),
        '/establishment-info': (context) =>  EstablishmentInfoScreen(),
      },
    );
  }
}
