import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

import 'screens/create_page.dart';
import 'screens/dashboard_screen.dart';
import 'screens/login_page.dart';
import 'screens/report_screen.dart';

void main() async {
  // Ensure that Firebase is initialized
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBPcAMdwrIq8mfJ06beBqg-tvoDezcwCBU",
          authDomain: "wpms-dd164.firebaseapp.com",
          projectId: "wpms-dd164",
          storageBucket: "wpms-dd164.appspot.com",
          messagingSenderId: "362577640088",
          appId: "1:362577640088:web:99feb19c3f9d61fc652eed"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DashboardScreen(),
      routes: {
        ReportScreen.route: (context) => const ReportScreen(),
        LogInPage.route: (context) => const LogInPage(),
        CreatePackage.route: (context) => CreatePackage(),
      },
    );
  }
}
