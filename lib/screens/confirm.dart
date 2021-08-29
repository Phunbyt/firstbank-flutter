import 'package:firstbank/components/bottom_bar.dart';
import 'package:firstbank/components/continue_btn.dart';
import 'package:firstbank/components/details.dart';
import 'package:firstbank/components/dots_brain.dart';
import 'package:flutter/material.dart';
import '../components/white_card.dart';

import '../constants.dart';

class ConfrimPage extends StatefulWidget {
  ConfrimPage(this.myAcctNum, this.bankSelect, this.destAcctNum,
      this.destAcctName, this.amount, this.narration);
  final String myAcctNum;
final String bankSelect;
final String destAcctNum;
final String destAcctName;
final double amount;
final String narration;
  @override
  _ConfrimPageState createState() => _ConfrimPageState();
}

class _ConfrimPageState extends State<ConfrimPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction Confirmation'),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          WhiteCard(
            cardChild: Container(
              color: kBigCardColor,
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    'Confirm Transfer',
                    style: kButtonStyle,
                  ),
                  AllDetails(widget.myAcctNum
,widget.bankSelect
,widget.destAcctNum
,widget.destAcctName
,widget.amount
,widget.narration),
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.grey,
                    child: Expanded(
                        child: Center(
                            child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Enter Transaction PIN'),
                        Container(
                          width: 150,
                          color: Colors.white,
                          child: TextFormField(
                            style: TextStyle(color: kPryColor),
                            decoration: InputDecoration(
                              labelStyle: TextStyle(color: kPryColor),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                              ),
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        )
                      ],
                    ))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CompleteBtn(),
                  Center(
                    child: DotsBrain(myNum: 1),
                  )
                ],
              ),
            ),
          ),
          BottomBar()
        ],
      ),
    );
  }
}
