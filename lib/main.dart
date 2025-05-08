import 'package:chatting/CommonFile/color.dart';
import 'package:chatting/PinNumber/pin_number.dart';
import 'package:chatting/route.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'firebase_options.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Chatting',
       debugShowCheckedModeBanner: false,
        getPages: Routes.routes,
      theme: ThemeData(
            primaryColor: ThemeColor.primary,
            primarySwatch: ThemeColor.primarySwatch,
        useMaterial3: true,
      ),
      home: PinNumber(),
    );
  }
}
