import 'package:flutter/material.dart';
import 'package:sumakerr_survey_app/common.dart';

enum SelectedChoice {
  Bijilo,
  Sukuta,
  Brufut,
  Brusubi,
  Salagi,
}

class UserSelection extends StatefulWidget {
  UserSelection({Key key}) : super(key: key);

  @override
  _UserSelectionState createState() => _UserSelectionState();
}

class _UserSelectionState extends State<UserSelection> {
  SelectedChoice _item = SelectedChoice.Bijilo;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(0, 2.0, 0, 2.0),
            title: Text(
              'Bijilo',
              style: TextStyle(
                fontSize: 19,
                fontFamily: 'NotoSans',
                color: grey,
              ),
            ),
            leading: Radio(
              value: SelectedChoice.Bijilo,
              groupValue: _item,
              onChanged: (SelectedChoice value) {
                setState(() {
                  _item = value;
                });
              },
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(0, 2.0, 0, 2.0),
            title: Text(
              'Sukuta',
              style: TextStyle(
                fontSize: 19,
                fontFamily: 'NotoSans',
                color: grey,
              ),
            ),
            leading: Radio(
              value: SelectedChoice.Sukuta,
              groupValue: _item,
              onChanged: (SelectedChoice value) {
                setState(() {
                  _item = value;
                });
              },
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(0, 2.0, 0, 2.0),
            title: Text(
              'Brufut',
              style: TextStyle(
                fontSize: 19,
                fontFamily: 'NotoSans',
                color: grey,
              ),
            ),
            leading: Radio(
              value: SelectedChoice.Brufut,
              groupValue: _item,
              onChanged: (SelectedChoice value) {
                setState(() {
                  _item = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
