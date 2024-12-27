import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/reset_password_screen.dart';
import 'screens/contact_info_screen.dart';
import 'screens/establishment_info_screen.dart';
import 'screens/rooms_accommodations_form.dart';
import 'screens/installation.dart';
import 'screens/establishment_policy.dart';
import 'screens/security_and_maintenance_service.dart';
import 'screens/activities_and_leisures.dart';
import 'screens/marketing_and_promotion.dart';
import 'screens/expectation_for_safrimat_immo.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Safrimat Immo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white, // Fond par défaut
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/reset_password': (context) => ResetPasswordScreen(),
        '/contact_info': (context) => ContactInfoScreen(),
        '/establishment_info': (context) => EstablishmentInfoScreen(),
        '/rooms_accommodations': (context) => RoomsAndAccommodationsScreen(),
        '/installation': (context) => InstallationsScreen(),
        '/establishment_policy': (context) => PolicyScreen(),
        '/security_and_maintenance_service': (context) => SecurityAndMaintenanceScreen(),
        '/activities_and_leisures': (context) => ActivitiesAndLeisureScreen(),
        '/marketing_and_promotion': (context) => MarketingAndPromotionScreen(),
        '/expectation_for_safrimat_immo': (context) => SafrimatImmoFeedbackScreen(),
      },
    );
  }
}
