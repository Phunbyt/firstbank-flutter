class MyBank {
  final double accBal = 404509888236.75;
}

class AccountInfo extends MyBank {
  AccountInfo(this.myAcctNum, this.bankSelect, this.destAcctNum,
      this.destAcctName, this.amount, this.narration);

  final String myAcctNum;
  final String bankSelect;
  final String destAcctNum;
  final String destAcctName;
  final double amount;
  final String narration;

  double destAcctBal() {
    return accBal - amount;
  }

  void printMe() {
    print(accBal);
  }
}
