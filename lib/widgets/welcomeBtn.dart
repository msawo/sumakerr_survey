import 'package:flutter/material.dart';

import '../screen/surveyPage.dart';
import '../common.dart';

class WelcomeBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          padding: EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 12.0),
          color: indigo,
          textColor: white,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => SurveyPage(),
            ));
          },
          child: Text(
            'Start Now',
            style: TextStyle(
              fontFamily: 'NotoSans',
              fontSize: 18,
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
            'Login',
            style: TextStyle(
              fontFamily: 'NotoSans',
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
