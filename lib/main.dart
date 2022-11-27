import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
    // return FutureBuilder(
    //   future: Future.delayed(
    //     Duration(seconds: 4, milliseconds: 500),
    //   ),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       //splashscreen
    //       return MaterialApp(
    //         debugShowCheckedModeBanner: false,
    //         home: SplashScreen(),
    //       );
    //     } else {
    //       return GetMaterialApp(
    //         debugShowCheckedModeBanner: false,
    //         title: "Application",
    //         initialRoute: AppPages.INITIAL,
    //         getPages: AppPages.routes,
    //       );
    //     }
    //   },
    // );
    // child: GetMaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: "Application",
    //   initialRoute: AppPages.INITIAL,
    //   getPages: AppPages.routes,
    //   ),
    // );
  }
}
