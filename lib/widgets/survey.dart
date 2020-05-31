import 'package:flutter/material.dart';

import './surveyQuestion.dart';

class Survey extends StatelessWidget {
  final List<Map<String, Object>> surveyData;
  final int questionIndex;
  final Function surveyResponse;

  Survey({
    @required this.surveyData,
    @required this.questionIndex,
    @required this.surveyResponse,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SurveyQuestion(surveyQuestion: surveyData[questionIndex]['surveyQuestion'],),
          
        ],
      ),
    );
  }
}
