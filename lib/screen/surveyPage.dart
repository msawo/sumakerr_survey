import 'package:flutter/material.dart';

import '../widgets/survey.dart';
import '../widgets/resetSurvey.dart';
import '../widgets/greeting.dart';
import 'package:sumakerr_survey_app/common.dart';

class SurveyPage extends StatefulWidget {
  static const String _title = 'Project details:';

  @override
  _SurveyPageState createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  int _questionIndex = 0;
  int _totalScore = 0;

  String _welcomeText = 'Hello there!';
  String _welcomeMessage = 'Let\'s start with some basic info.\n';

  final _surveyList = [
    {
      'surveyQuestion': 'Please select a project location:',
      'userPreference': [
        {'selection': 'Brusubi', 'score': 10},
        {'selection': 'Brufut', 'score': 9},
        {'selection': 'Kololi', 'score': 9},
        {'selection': 'Salagi', 'score': 8},
        {'selection': 'Sanyang', 'score': 7},
        {'selection': 'Tanji', 'score': 5},
      ],
    },
    {
      'surveyQuestion': 'What service(s) are you looking for?',
      'userPreference': [
        {'selection': 'Design service', 'score': 6},
        {'selection': 'Construction service', 'score': 8},
      ],
    },
    {
      'surveyQuestion': 'How many rooms do you want in your new home?',
      'userPreference': [
        {'selection': 'One to two', 'score': 4},
        {'selection': 'Three to four', 'score': 6},
        {'selection': 'Five to six', 'score': 8},
        {'selection': 'Seven or more', 'score': 10},
      ],
    },
    {
      'surveyQuestion': 'How many bedrooms would you like in your new house?',
      'userPreference': [
        {'selection': 'One', 'score': 3},
        {'selection': 'Two', 'score': 6},
        {'selection': 'Three', 'score': 8},
        {'selection': 'Four', 'score': 10},
        {'selection': 'I\'m not sure', 'score': 0},
      ],
    },
    // TODO: Update the rest of the userSelections below
    // {
    //   'surveyQuestion': 'How many bathrooms would you like in your new house?',
    //   'userPreference': [
    //     {'selection': '', 'score': 6},
    //     'One',
    //     'Two',
    //     'Three',
    //     'Four or more',
    //     'I\'m not sure',
    //   ],
    // },
    // {
    //   'surveyQuestion':
    //       'Have you already purchased the land where the home will be built?',
    //   'userPreference': [
    //     {'selection': '', 'score': 6},
    //     'I own a plot',
    //     'Currently looking',
    //     'Process of purchasing',
    //   ],
    // },
    // {
    //   'surveyQuestion': 'What is your current status of this project?',
    //   'userPreference': [
    //     {'selection': '', 'score': 6},
    //     'Exploring ideas',
    //     'Planning/budgeting',
    //     'Ready to hire',
    //     'In progress',
    //   ],
    // },
    // {
    //   'surveyQuestion': 'When do you need to start the project?',
    //   'userPreference': [
    //     {'selection': '', 'score': 6},
    //     'Within a week',
    //     'Within a month',
    //     'Within six months',
    //     'Not sure',
    //   ],
    // },
    // {
    //   'surveyQuestion': 'What\'s your budget?',
    //   'userPreference': [
    //     {'selection': '', 'score': 6},
    //     'D250,000',
    //     'D500,000',
    //     'D1 Million+',
    //   ],
    // },

  ];

  void _surveyResponse(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });

    if (_questionIndex < _surveyList.length) {
      print('We have made a survey question');
    } else {
      print('No more questions');
    }
  }

  void _resetSurvey() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(SurveyPage._title),
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
              _questionIndex < 1
                  ? GreetingMessage(
                      welcomeText: _welcomeText,
                      welcomeMessage: _welcomeMessage,
                    )
                  : Container(),
              // UserSelection(surveyAnswer: 'Brusubi', selectHandler: _surveyResponse,),
              _questionIndex < _surveyList.length
                  ? Survey(
                      questionIndex: _questionIndex,
                      surveyData: _surveyList,
                      surveyResponse: _surveyResponse,
                    )
                  : ResetSurvey(resetHandler: _resetSurvey, resultScore: _totalScore,),
            ],
          ),
        ),
      ),
    );
  }
}
