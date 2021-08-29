import 'package:firstbank/account_info.dart';
import 'package:firstbank/components/bottom_bar.dart';
import 'package:firstbank/components/continue_btn.dart';
import 'package:firstbank/components/dots_brain.dart';
import 'package:firstbank/screens/confirm.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import '../components/white_card.dart';

import '../constants.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String myAcctNum = '3101471009';
  String bankSelect = 'Guaranty Trust Bank';
  String destAcctNum = '';
  String destAcctName = '';
  double amount = 0.0;
  String narration = '';
  final oCcy = new NumberFormat("#,##0.00", "en_US");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfer Details'),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Enter Transfer Details',
                    style: kButtonStyle,
                  ),
                  DropdownButtonFormField<String>(
                    isExpanded: true,
                    dropdownColor: Colors.grey,
                    value: myAcctNum,
                    decoration: InputDecoration(
                      labelText: 'From Account',
                      labelStyle: TextStyle(color: kPryColor),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    icon: Icon(Icons.arrow_downward, color: kPryColor),
                    iconSize: 24,
                    elevation: 16,
                    onChanged: (String? newValue) {
                      setState(() {
                        myAcctNum = newValue!;
                      });
                    },
                    items: <String>['3101471009', '3101471000']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value, style: TextStyle(color: kPryColor)),
                      );
                    }).toList(),
                  ),
                  DropdownButtonFormField<String>(
                    isExpanded: true,
                    dropdownColor: Colors.grey,
                    value: bankSelect,
                    decoration: InputDecoration(
                      labelText: 'Select Destination Bank',
                      labelStyle: TextStyle(color: kPryColor),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    icon: Icon(Icons.arrow_downward, color: kPryColor),
                    iconSize: 24,
                    elevation: 16,
                    onChanged: (String? newValue) {
                      setState(() {
                        bankSelect = newValue!;
                      });
                    },
                    items: <String>[
                      'Guaranty Trust Bank',
                      'United Bank for Africa',
                      'First Bank',
                      'Union Bank',
                      'Zenith Bank',
                      'Heritage Bank',
                      'Fidelity Bank',
                      'Sterling Bank'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value, style: TextStyle(color: kPryColor)),
                      );
                    }).toList(),
                  ),
                  Column(children: [
                    TextFormField(
                        style: TextStyle(color: kPryColor),
                        decoration: InputDecoration(
                          hintText: 'Enter Destination Account Number',
                          hintStyle: TextStyle(color: kPryColor),
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
                        onChanged: (String value) {
                          setState(() {
                            destAcctNum = value;
                          });
                        }),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        FaIcon(FontAwesomeIcons.userCircle, color: kPryColor),
                        SizedBox(width: 10),
                        Text(
                          'Select from Beneficiary',
                          style: TextStyle(color: kPryColor),
                        )
                      ],
                    )
                  ]),
                  TextFormField(
                      style: TextStyle(color: kPryColor),
                      decoration: InputDecoration(
                        hintText: 'Enter Destination Account Name',
                        hintStyle: TextStyle(color: kPryColor),
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
                      onChanged: (String value) {
                        setState(() {
                          destAcctName = value;
                        });
                      }),
                  TextFormField(
                      style: TextStyle(color: kPryColor),
                      decoration: InputDecoration(
                        hintText: 'Enter Amount',
                        hintStyle: TextStyle(color: kPryColor),
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
                      onChanged: (String value) {
                        setState(() {
                          amount = double.parse(value);
                        });
                      }),
                  TextFormField(
                      style: TextStyle(color: kPryColor),
                      decoration: InputDecoration(
                        hintText: 'Enter Narration',
                        hintStyle: TextStyle(color: kPryColor),
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
                      onChanged: (String value) {
                        setState(() {
                          narration = value;
                        });
                      }),
                  ContinueBtn(myCallback: () {
                    AccountInfo myAcct = AccountInfo(myAcctNum, bankSelect,
                        destAcctNum, destAcctName, amount, narration);
                    myAcct.destAcctBal();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConfrimPage(
                              myAcct.myAcctNum,
                              myAcct.bankSelect,
                              myAcct.destAcctNum,
                              myAcct.destAcctName,
                              myAcct.amount,
                              myAcct.narration)),
                    );

                  }),
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

class TransactionCard extends StatelessWidget {
  const TransactionCard({required this.icon, required this.cardText});

  final Widget icon;
  final Widget cardText;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        leading: icon,
        title: cardText,
        trailing:
            FaIcon(FontAwesomeIcons.longArrowAltRight, color: Colors.black),
      ),
    );
  }
}
