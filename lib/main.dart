import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:women_safety/child/bottom_page.dart';
import 'package:women_safety/db/share_pref.dart';
import 'package:women_safety/utils/flutter_background_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // if (kIsWeb) {

  // await Firebase.initializeApp(
  //   options:
  // );

  // }else{
  // await Firebase.initializeApp();

  // }
  await Firebase.initializeApp();
  await MySharedPrefference.init();
  await initializeService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        // scaffoldMessengerKey: navigatorkey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // textTheme: GoogleFonts.firaSansTextTheme(
          //   Theme.of(context).textTheme,
          // ),
          primarySwatch: Colors.blue,
        ),
        home: BottomPage());
  }
}
