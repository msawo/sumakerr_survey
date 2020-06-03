import 'package:flutter/material.dart';

import 'package:sumakerr_survey_app/common.dart';

class SurveyAnswer extends StatelessWidget {
  final String surveyAnswer;
  final Function selectHandler;

  SurveyAnswer({this.surveyAnswer, this.selectHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
      child: RaisedButton(
        color: greenIsh,
        textColor: white,
        onPressed: selectHandler,
        child: Text(
          surveyAnswer,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
