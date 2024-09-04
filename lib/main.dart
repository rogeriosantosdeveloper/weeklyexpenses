import 'package:flutter/material.dart';
import 'package:weeklyexpenses/components/transaction_user.dart';
main() => runApp(WeeklyExpenses());

class WeeklyExpenses extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp (
      home: MyHomePage() 
    );
  }
}

class MyHomePage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Despesas Pessoais"),
      ),
      body: Column(
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
          TransactionUser(),
        ],
      ),
    );
  }
}