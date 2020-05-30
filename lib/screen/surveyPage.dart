import 'package:flutter/material.dart';

import 'package:sumakerr_survey_app/common.dart';

class SurveyPage extends StatelessWidget {
  final int _index = 0;
  final _surveyList = [
    {
      'inputQuestion': 'Please select a project location:',
      'userPreference': [
        'Brusubi',
        'Kololi',
        'Brufut',
      ],
    },
    {
      'inputQuestion': 'What service(s) are you looking for?',
      'userPreference': [
        'Design service',
        'Construction service',
      ],
    },
    {
      'inputQuestion': 'How many rooms do you want in your new home?',
      'userPreference': [
        'One to two',
        'Three to four',
        'Five to six',
        'Seven or more',
      ],
    },
    {
      'inputQuestion': 'How many bedrooms would you like in your new house?',
      'userPreference': [
        'One',
        'Two',
        'Three',
        'Four or more',
        'I\'m not sure',
      ],
    },
    {
      'inputQuestion': 'How many bathrooms would you like in your new house?',
      'userPreference': [
        'One',
        'Two',
        'Three',
        'Four or more',
        'I\'m not sure',
      ],
    },
    {
      'inputQuestion':
          'Have you already purchased the land where the home will be built?',
      'userPreference': [
        {'selection': 'I own a plot', 'score': 10},
        {'selection': 'Currently looking', 'score': 1},
        {'selection': 'Process of purchasing', 'score': 5},
      ],
    },
    {
      'inputQuestion': 'What is your current status of this project?',
      'userPreference': [
        {'selection': 'Exploring ideas', 'score': 2},
        {'selection': 'Planning/budgeting', 'score': 5},
        {'selection': 'Ready to hire', 'score': 7},
        {'selection': 'In progress', 'score': 10},
      ],
    },
    {
      'inputQuestion': 'When do you need to start the project?',
      'userPreference': [
        {'selection': 'Within a week', 'score': 10},
        {'selection': 'Within a month', 'score': 7},
        {'selection': 'Within six months', 'score': 4},
        {'selection': 'Not sure', 'score': 1},
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
        title: Text('Project Details'),
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
                _surveyList[2]['inputQuestion'],
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
