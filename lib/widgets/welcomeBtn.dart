import 'package:flutter/material.dart';

import './surveyPage.dart';
import '../common.dart';

class WelcomeBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          color: indigo,
          textColor: white,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => SurveyPage(),
            ));
          },
          child: Text(
            'Start',
            style: TextStyle(
              fontFamily: 'NotoSans-Bold',
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        RaisedButton(
          textColor: white,
          color: greenIsh,
          onPressed: () => print(
            'Button pressed',
          ),
          child: Text(
            'Learn more',
            style: TextStyle(
              fontFamily: 'NotoSans-BoldItalic',
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }
}
