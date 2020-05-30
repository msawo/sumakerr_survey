import 'package:flutter/material.dart';

// import '../widgets/propertyCard.dart';
import '../widgets/welcomeBtn.dart';
import '../common.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset('images/landing_kitchen.jpg', fit: BoxFit.cover),
            ),
            SafeArea(
              child: ListView(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(8.0, 100.0, 8.0, 8.0),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: white,
                              fontSize: 40.0,
                              fontFamily: 'NotoSans',
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: '\nGet inspired.',
                              ),
                              TextSpan(
                                text: '\nBuy products.',
                              ),
                              TextSpan(
                                text: '\nFind pros.',
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Divider(
                          color: grey,
                        ),
                        height: 5,
                        width: 60.0,
                      ),
                      Text(
                        'Sumakerr - A new way to design your home',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: white,
                          fontFamily: 'NotoSans',
                          fontSize: 16,
                        ),
                      ),
                    ],
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
