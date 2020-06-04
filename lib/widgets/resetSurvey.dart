import 'package:flutter/material.dart';
import 'package:sumakerr_survey_app/common.dart';

class ResetSurvey extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  ResetSurvey({this.resetHandler, this.resultScore});

  // Create a getter
  String get resultPhrase {
    var resultText;

    if (resultScore >= 30) {
      resultText = 'Here are some recommended professionals in your area';
    } else if(resultScore >= 20) {
      resultText = 'You can reach a Sumakerr rep at +220 7702323 to help you find the right professionals';
    } else if(resultScore >= 10) {
      resultText = 'Have us call you at anytime to discuss some prospects';
    } else {
      resultText = 'Explore some ideas here...';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                resultPhrase,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: grey,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            FlatButton(
              color: airbnbIsh,
              textColor: white,
              onPressed: resetHandler,
              padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
              child: Text(
                'Restart Survey',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
