import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weeklyexpenses/components/transaction_form.dart';
import 'package:weeklyexpenses/components/transaction_list.dart';
import 'package:weeklyexpenses/models/transaction.dart';
main() => runApp(WeeklyExpenses());

class WeeklyExpenses extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp (
      home: MyHomePage() 
    );
  }
}

class MyHomePage extends StatefulWidget{

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  _openTransactionFormModal(BuildContext context){
    showModalBottomSheet(
      context: context, 
      builder: (ctx){
        return TransactionForm(null);
      }
    )
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Despesas Pessoais"),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('Gráfico'),
                elevation: 5,
              ),
            ),
            Column(
              children: <Widget>[
              TransactionForm(_addTransaction),
              TransactionList(_transactions),
      ],
    );
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}