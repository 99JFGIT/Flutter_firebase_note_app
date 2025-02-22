import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_note_app/firebase/firebase_option.dart';
import 'package:firebase_note_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();///intailize ensure korbe
  await Firebase.initializeApp(
    name:"notipotro",
    options: DefaultFirebaseOptions.currentPlatform,
  );


// firebase crashlytic connection
  Flutter.onError.onErroe = FirebaseCrashlytics.instance.recordFlutterError;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'notipotro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}


