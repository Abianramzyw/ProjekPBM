import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:gass_in/Views/gps_page.dart';
import 'package:get/get.dart';
import 'dart:io';

import 'package:gass_in/Views/home_page.dart';
import 'package:gass_in/Views/profile_edit_page.dart';
import 'package:gass_in/Views/profile_page.dart';
import 'package:gass_in/Views/splash_page.dart';
import 'package:gass_in/Views/camera_page.dart';

List<CameraDescription>? cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GassIN',
      theme: ThemeData(
        fontFamily: "TT Norm Pro",
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
            bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashOnePage(),
      // home: const GPSPage(),
    );
  }
}
