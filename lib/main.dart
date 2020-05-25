import 'package:flutter/material.dart';

import './widgets/survey.dart';

void main() => runApp(SumakerrSurveyApp());

class SumakerrSurveyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Survey(),
    );
  }
}
