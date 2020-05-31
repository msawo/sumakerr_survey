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
              height: 400,
              width: double.infinity,
              child: Image.asset('images/interior_design.gif', fit: BoxFit.cover,), // This image was made by Guillaume Kurkdjian
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
                              color: airbnbIsh,
                              fontSize: 40.0,
                              fontFamily: 'NotoSans',
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: '\nGet inspired.',
                              ),
                              TextSpan(
                                text: '\nFind properties.',
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
                        height: 30,
                        width: 250.0,
                      ),
                      Text(
                        '\nSumakerr - A new way to design your home\n',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: grey,
                          fontFamily: 'NotoSans',
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
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
