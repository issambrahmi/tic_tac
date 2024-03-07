import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tic_tac/View/Pages/game_page.dart';
import 'package:tic_tac/View/Pages/home_page.dart';
import 'package:tic_tac/constants/const.dart';

final DatabaseReference database = FirebaseDatabase.instance.ref();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: 'AIzaSyBSv6hcaK9wm1XmnEnTBplSRaTBoKRPQdk',
              appId: '1:431429578808:android:9027fb7a4a6c81630d36cd',
              messagingSenderId: '431429578808',
              projectId: 'tic-tac-85e38',
              databaseURL:'https://tic-tac-85e38-default-rtdb.europe-west1.firebasedatabase.app'
              ))
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          theme: ThemeData(scaffoldBackgroundColor: MyColors.primaryColor),
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: const GamePage(),
    );
  }
}
