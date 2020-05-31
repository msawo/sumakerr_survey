import 'package:flutter/material.dart';

import '../common.dart';

class SurveyQuestion extends StatelessWidget {
  final String surveyQuestion;

  SurveyQuestion({this.surveyQuestion});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        surveyQuestion,
        style: TextStyle(
          fontFamily: 'NotoSans',
          fontSize: 22.0,
          color: grey,
        ),
      ),
    );
  }
}
