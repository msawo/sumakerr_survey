import 'package:flutter/material.dart';
import 'package:sumakerr_survey_app/common.dart';

class ResetSurvey extends StatelessWidget {
  final Function resetHandler;

  ResetSurvey({this.resetHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'No more questions\n',
              style: TextStyle(
                fontSize: 22,
                color: grey,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
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
