import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../account_info.dart';
import '../constants.dart';
import '../components/reusablecard.dart';
import '../components/white_card.dart';
import '../components/bottom_bar.dart';
import '../components/dashboard_links.dart';
import '../components/statistics.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  MyBank myAccountInfo = MyBank();
  final oCcy = new NumberFormat("#,##0.00", "en_US");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
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
            image: AssetImage("images/welcomeBG.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatarIcon(
                      bgColor: Color(0xFF050B1A),
                      iconData: Icon(Icons.local_see,
                          size: 50.0, color: kDashboardIconColor),
                      iconRadius: 40.0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Evening, John Doe',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Last Login 8/8/21 12:06pm',
                              ),
                              Text(
                                'HISTORY',
                                style: kLabelTextStyle,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    ReusableCard(
                      Text(
                        'ACCOUNT # 3101471009',
                        style: kLabelTextStyle,
                      ),
                      Text('\$ ${oCcy.format(myAccountInfo.accBal)}',
                          style: kAcctBalTextStyle),
                      kDashboardCardColor,
                    ),
                  ],
                ),
              ),
              WhiteCard(
                cardChild: Container(
                  color: kBigCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DashboardLinks(),
                      Expanded(child: Statistics()),
                    ],
                  ),
                ),
              ),
              BottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
