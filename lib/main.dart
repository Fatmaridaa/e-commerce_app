import 'package:gp/utilities/routes.dart';

import 'package:flutter/material.dart';
import 'package:gp/utilities/router.dart';
import 'package:gp/views/screens/animated_appbar.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return  MaterialApp(
            debugShowCheckedModeBanner: false,

           onGenerateRoute: onGenerateRoute,
           initialRoute: AppRoutes.loginPageRoute,
           //  home: DetailPage(),







          );

        }

    );
  }
}