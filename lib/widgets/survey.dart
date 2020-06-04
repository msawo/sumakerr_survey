import 'package:flutter/material.dart';

import './surveyQuestion.dart';
import './surveyAnswer.dart';

class Survey extends StatelessWidget {
  final List<Map<String, Object>> surveyData;
  final Function surveyResponse;
  final int questionIndex;

  Survey({
    @required this.surveyData,
    @required this.questionIndex,
    @required this.surveyResponse,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SurveyQuestion(surveyQuestion: surveyData[questionIndex]['surveyQuestion'],),
          ...(surveyData[questionIndex]['userPreference'] as List<Map<String, Object>>).map((userSelection) {
            return SurveyAnswer(selectHandler: () => surveyResponse(userSelection['score']), surveyAnswer: userSelection['selection'],); 
            //TODO: Later swtich SurveyAnswer widget here with UserSelection widget for Radio btn selection
          }).toList()
        ],
      ),
    );
  }
}
