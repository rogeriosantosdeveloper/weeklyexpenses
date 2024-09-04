import 'dart:math';

import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: 't1',
        title: 'Novo Tênis da Nike',
        value: 310.19,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Conta de Energia',
        value: 120.30,
        date: DateTime.now()),
  ];

  _addTransaction(String title, double value){
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title, 
      value: value, 
      date: DateTime.now()
      );

      setState(() {
        _transactions.add(newTransaction);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionForm(_addTransaction),
      ],
    );
  }
}
