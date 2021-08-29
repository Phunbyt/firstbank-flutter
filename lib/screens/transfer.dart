import 'package:firstbank/components/bottom_bar.dart';
import 'package:firstbank/components/dots_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/white_card.dart';
import '../constants.dart';

class TransferPage extends StatefulWidget {
  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfer'),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'MY FAVORITES',
                    style: kButtonStyle,
                  ),
                  Card(
                    elevation: 20.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: RawMaterialButton(
                            onPressed: () {},
                            fillColor: kIconColor,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10),
                            child: FaIcon(FontAwesomeIcons.plus, size: 40),
                          ),
                        ),
                        Text(
                          'Add',
                          style: kGreyTextStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'CHOOSE TRANSFER TYPE',
                    style: kButtonStyle,
                  ),
                  TransactionCard(
                    icon: FaIcon(FontAwesomeIcons.moneyBillWave,
                        color: kIconColor),
                    cardText:
                        Text('Between my Accounts', style: kGreyTextStyle),
                  ),
                  TransactionCard(
                    icon: FaIcon(FontAwesomeIcons.facebookF, color: kIconColor),
                    cardText:
                        Text('To Firstbank Account', style: kGreyTextStyle),
                  ),
                  TransactionCard(
                    icon:
                        FaIcon(FontAwesomeIcons.university, color: kIconColor),
                    cardText:
                        Text('To Other Bank Account', style: kGreyTextStyle),
                  ),
                  TransactionCard(
                    icon: FaIcon(FontAwesomeIcons.userNinja, color: kIconColor),
                    cardText: Text('Send To Saved Beneficiary',
                        style: kGreyTextStyle),
                  ),
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
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/account');
      },
      child: Card(
        color: Colors.white,
        child: ListTile(
          leading: icon,
          title: cardText,
          trailing:
              FaIcon(FontAwesomeIcons.longArrowAltRight, color: Colors.black),
        ),
      ),
    );
  }
}
