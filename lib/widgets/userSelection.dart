import 'package:flutter/material.dart';

import 'package:sumakerr_survey_app/common.dart';

class LabeledRadio extends StatelessWidget {
  final String label;
  final EdgeInsets padding;
  final bool groupValue;
  final bool value;
  final Function onChanged;

  LabeledRadio({
    this.label,
    this.padding,
    this.groupValue,
    this.value,
    this.onChanged,
    
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (value != groupValue) onChanged(value); //TODO: Update value to the correct question index
      },
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Radio<bool>(
              groupValue: groupValue,
              value: value,
              onChanged: (bool newValue) {
                onChanged(newValue);
              },
            ),
            Text(
              label,
              style: TextStyle(
                color: grey,
                fontSize: 19,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserSelection extends StatefulWidget {
  final String surveyAnswer;
  final Function selectHandler;

  UserSelection({
    Key key,
    @required this.surveyAnswer,
    @required this.selectHandler,
  }) : super(key: key);
  @override
  _UserSelectionState createState() =>
      _UserSelectionState(surveyAnswer, selectHandler);
}

class _UserSelectionState extends State<UserSelection> {
  bool _isRadioSelected = false;

  final String surveyAnswer;
  final Function selectHandler;

  _UserSelectionState(this.surveyAnswer, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <LabeledRadio>[
          LabeledRadio(
            label: surveyAnswer,
            padding: EdgeInsets.fromLTRB(0, 5.0, 2.0, 2.0),
            value: true,
            groupValue: _isRadioSelected,
            onChanged: (bool newValue) {
              setState(() {
                selectHandler();
                _isRadioSelected = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
