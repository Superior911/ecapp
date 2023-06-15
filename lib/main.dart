import 'package:eduapp/screen/branch_information.dart';
import 'package:eduapp/screen/class%20subject.dart';
import 'package:eduapp/screen/home_screen.dart';
import 'package:eduapp/screen/personnel.dart';
import 'package:eduapp/screen/subject.dart';
import 'package:eduapp/screen/welcome_screen.dart';
import 'package:eduapp/screen_sidebar/help_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(
    appId: "1:693854676907:android:47359c516eeb48f76e14ee",
    apiKey: "AIzaSyCWU1GlU-GN2r_b5OlZPmnPrylWO1SzE8Q",
    projectId: "education-1-46233",
    messagingSenderId: "693854676907",
  ));
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale("th"),
        Locale("en")
      ],
      path: 'assets/translations',
      saveLocale: true,
      fallbackLocale: const Locale("th"),
      child: myapp(),
    )
  );
}

class myapp extends StatelessWidget{
  Widget build(BuildContext){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: BuildContext.localizationDelegates,
      supportedLocales: BuildContext.supportedLocales,
      locale: BuildContext.locale,
      initialRoute: "/",
      routes: {
        '/': (context) => welcomescreen(),
        '/home': (context) => HomePage(),
        '/person': (context) => Personnel(),
        '/information': (context) => Information(),
        '/subjectrmutt': (context) => SubjectRmutt(),
        '/classroom': (context) => Classroom(),
        '/help': (context) => ChatSupport(),

      },
    );
  }
}