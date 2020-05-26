import 'package:flutter/material.dart';

import './welcomeBtn.dart';
import '../common.dart';

class HomePage extends StatelessWidget {
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
              height: 450,
              width: double.infinity,
              child: Image.asset('images/banner.jpg', fit: BoxFit.cover),
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
                                  fontFamily: 'NotoSans-Bold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0,
                                  color: white.withOpacity(0.8),
                                ),
                              ),
                              TextSpan(
                                text: '\nBuy products.',
                                style: TextStyle(
                                  fontFamily: 'NotoSans-Bold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0,
                                  color: white.withOpacity(0.8),
                                ),
                              ),
                              TextSpan(
                                text: '\nFind pros.',
                                style: TextStyle(
                                  fontFamily: 'NotoSans-Bold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0,
                                  color: white.withOpacity(0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        'Want to buy or remodel a property?',
                        style: TextStyle(
                          fontSize: 16,
                          color: white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  WelcomeBtn(),
                  
                ],
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
