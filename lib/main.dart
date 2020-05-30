import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screen/homePage.dart';

void main() => runApp(SumakerrSurveyApp());

class SumakerrSurveyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sumakerr Survey',
      home: HomePage(),
    );
  }
}
