import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'details_card.dart';

String dateVal = DateFormat.yMMMd().format(DateTime.now());

class AllDetails extends StatelessWidget {
  AllDetails(this.myAcctNum, this.bankSelect, this.destAcctNum,
      this.destAcctName, this.amount, this.narration);
  final String myAcctNum;
  final String bankSelect;
  final String destAcctNum;
  final String destAcctName;
  final double amount;
  final String narration;

  final oCcy = new NumberFormat("#,##0.00", "en_US");

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Details(
            transKey: 'From',
            transVal: 'SAVINGS ACCOUNT $myAcctNum',
          ),
          Details(
            transKey: 'To',
            transVal: '$destAcctName $destAcctNum',
          ),
          Details(
            transKey: 'Bank',
            transVal: '$bankSelect',
          ),
          Details(
            transKey: 'Date',
            transVal: dateVal,
          ),
          Details(
            transKey: 'Amount',
            transVal: '\$ ${oCcy.format(amount)}',
          ),
          Details(
            transKey: 'Narration',
            transVal: '$narration',
          ),
        ],
      ),
    );
  }
}
