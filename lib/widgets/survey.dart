import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text('Sumakerr Survey'),
        // backgroundColor: Colors.blueGrey[400],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Flexible(
              child: Container(
                width: double.infinity,
                child: Image.asset(
                  'images/home-design.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              flex: 6,
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () => print(
                      'Btn pressed',
                    ),
                    child: Text('Start'),
                  ),
                ],
              ),
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}
