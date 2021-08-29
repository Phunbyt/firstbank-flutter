import 'package:firstbank/components/continue_btn.dart';
import 'package:flutter/material.dart';
import '../components/reusablecard.dart';
import '../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/logo-DarkBg-removebg-preview.png',
          fit: BoxFit.contain,
          height: 50,
        ),
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/loginBG.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    ReusableCard(
                        Icon(Icons.swap_horiz,
                            size: kIconSize, color: kIconColor),
                        Text('QUICK TRANSFERS', style: kLabelTextStyle),
                        Color(0xFF050B1A)),
                    ReusableCard(
                        Icon(Icons.phonelink_ring,
                            size: kIconSize, color: kIconColor),
                        Text('QUICK AIRTIME', style: kLabelTextStyle),
                        Color(0xFF050B1A)),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReusableCard(
                        FaIcon(Icons.qr_code_2_rounded,
                            size: kIconSize, color: kIconColor),
                        Text('QUICK QR', style: kLabelTextStyle),
                        Color(0xFF050B1A)),
                    ReusableCard(
                        Icon(Icons.account_balance_wallet,
                            size: kIconSize, color: kIconColor),
                        Text('BALANCE ENQUIRY', style: kLabelTextStyle),
                        Color(0xFF050B1A)),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    ReusableCard(
                      Text('Enter your mPin to login', style: kLabelTextStyle),
                      VerificationCode(
                        textStyle:
                            TextStyle(fontSize: 20.0, color: Colors.white),
                        underlineColor: Colors.white,
                        keyboardType: TextInputType.number,
                        length: 5,
                        // clearAll is NOT required, you can delete it
                        // takes any widget, so you can implement your design

                        onCompleted: (String value) {},
                        onEditing: (bool value) {},
                      ),
                      Color(0xFF050B1A),
                    ),
                  ],
                ),
              ),
              ContinueBtn(myCallback: () {
                Navigator.pushNamed(context, '/dashboard');
              })
            ],
          ),
        ),
      ),
    );
  }
}
