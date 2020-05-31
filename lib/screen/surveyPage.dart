import 'package:flutter/material.dart';

import '../widgets/userSelection.dart';
import 'package:sumakerr_survey_app/common.dart';

class SurveyPage extends StatelessWidget {
  static const String _title = 'Project details:';

  final int _index = 0;
  final _surveyList = [
    {
      'surveyQuestion': 'Please select a project location:',
      'userPreference': [
        'Brusubi',
        'Kololi',
        'Brufut',
      ],
    },
    {
      'surveyQuestion': 'What service(s) are you looking for?',
      'userPreference': [
        'Design service',
        'Construction service',
      ],
    },
    {
      'surveyQuestion': 'How many rooms do you want in your new home?',
      'userPreference': [
        'One to two',
        'Three to four',
        'Five to six',
        'Seven or more',
      ],
    },
    {
      'surveyQuestion': 'How many bedrooms would you like in your new house?',
      'userPreference': [
        'One',
        'Two',
        'Three',
        'Four or more',
        'I\'m not sure',
      ],
    },
    {
      'surveyQuestion': 'How many bathrooms would you like in your new house?',
      'userPreference': [
        'One',
        'Two',
        'Three',
        'Four or more',
        'I\'m not sure',
      ],
    },
    {
      'surveyQuestion':
          'Have you already purchased the land where the home will be built?',
      'userPreference': [
        'I own a plot',
        'Currently looking',
        'Process of purchasing',
      ],
    },
    {
      'surveyQuestion': 'What is your current status of this project?',
      'userPreference': [
        'Exploring ideas',
        'Planning/budgeting',
        'Ready to hire',
        'In progress',
      ],
    },
    {
      'surveyQuestion': 'When do you need to start the project?',
      'userPreference': [
        'Within a week',
        'Within a month',
        'Within six months',
        'Not sure',
      ],
    },
    {
      'surveyQuestion': 'What\'s your budget?',
      'userPreference': [
        'D250,000',
        'D500,000',
        'D1 Million+',
      ],
    },
  ];

  void _surveyQuestion() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        backgroundColor: greenIsh,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hello there!',
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontWeight: FontWeight.w500,
                  fontSize: 30.0,
                  color: black,
                ),
              ),
              Text(
                'Let\'s start with some basic info.\n',
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 16.0,
                  color: grey,
                ),
              ),
              Text(
                _surveyList[0]['surveyQuestion'],
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 22.0,
                  color: grey,
                ),
              ),
              // RaisedButton(
              //   color: greenIsh,
              //   textColor: white,
              //   onPressed: () => print('Hey'),
              //   child: Text(
              //     'Bijilo',
              //   ),
              // )
              UserSelection(),
            ],
          ),
        ),
      ),
    );
  }
}

