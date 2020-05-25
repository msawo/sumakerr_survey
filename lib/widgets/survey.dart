import 'package:flutter/material.dart';

import '../common.dart';

class Survey extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(
              height: 430,
              width: double.infinity,
              child: Image.asset(
                'images/landing_plot.jpg',
                fit: BoxFit.cover
              ),
            ),
            SafeArea(
              child: ListView(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(8.0, 50.0, 8.0, 50.0),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '\nGet inspired.',
                                style: TextStyle(
                                  fontFamily: 'NotoSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 33.0,
                                  color: white.withOpacity(0.8),
                                ),
                              ),
                              TextSpan(
                                text: '\nBuy products.',
                                style: TextStyle(
                                  fontFamily: 'NotoSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 33.0,
                                  color: white.withOpacity(0.8),
                                ),
                              ),
                              TextSpan(
                                text: '\nFind pros.',
                                style: TextStyle(
                                  fontFamily: 'NotoSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 33.0,
                                  color: white.withOpacity(0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        'Industry Professionals,\nMeet Sumakerr Pro',
                        style: TextStyle(
                          fontSize: 25,
                          color: white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        color: indigo,
                        textColor: white,
                        onPressed: () => print('Button pressed'),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: 'NotoSans',
                            fontSize: 17,
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
                            fontFamily: 'NotoSans',
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
