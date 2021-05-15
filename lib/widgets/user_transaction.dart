import 'package:flutter/material.dart';
import 'package:flutter_application_lifestyle/widgets/new_transactions.dart';
import 'package:flutter_application_lifestyle/widgets/transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: "t1",
      title: "New laptop",
      amount: 2000.00,
      date: DateTime.now(),
    ),
    Transaction(
        id: "t2", title: "New Shoes", amount: 200.00, date: DateTime.now()),
  ];

  void _addNewTransaction(String txtitle, double txamount) {
    final newTx = Transaction(
        title: txtitle,
        amount: txamount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction)
      ],
    );
  }
}
