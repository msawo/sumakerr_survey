import 'package:flutter/material.dart';

import 'package:sumakerr_survey_app/common.dart';

class SurveyPage extends StatelessWidget {
  final int _index = 0;
  final _surveyList = [
    {
      'inputQuestion': 'Shop for properties in The Gambia. Select a location:',
      'userPreference': [
        'Brusubi',
        'Kololi',
        'Brufut',
      ],
    },
    {
      'inputQuestion': 'Select a property type:',
      'userPreference': [
        'Home for sale',
        'Plot of land',
        'Rental property',
      ],
    },
    {
      'inputQuestion': 'What\'s your budget?',
      'userPreference': [
        'D250,000',
        'D500,000',
        'D1 Million+',
      ],
    },
  ];

  final String surveyQuestion;

  SurveyPage({this.surveyQuestion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Survey'),
        backgroundColor: greenIsh,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                _surveyList[0]['inputQuestion'],
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 22.0,
                  color: grey,
                ),
              ),
              RaisedButton(
                color: greenIsh,
                textColor: white,
                onPressed: () => print('Hey'),
                child: Text(
                  'Bijilo',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
