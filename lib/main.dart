import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'pages/carddetails/card_detail.dart';
import 'pages/dashoard/dashboard.dart';
import 'pages/onboard/onboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => MaterialApp(
        title: 'Neonix',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.black,
        ),
        routes: {
          OnboardPage.id: (context) => OnboardPage(),
          DashBoard.id: (context) => DashBoard(),
          CardDetailsPage.id: (context) => CardDetailsPage()
        },
        initialRoute: OnboardPage.id,
      ),
    );
  }
}
