import 'package:flutter/material.dart';
import 'package:weeklyexpenses/models/transaction.dart';
import 'package:intl/intl.dart';
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
  final _transactions = [
    Transaction(id: 't1', title: 'Novo Tênis da Nike', value: 310.19, date: DateTime.now()),
    Transaction(id: 't2', title: 'Conta de Energia', value: 120.30, date: DateTime.now()),
  ];
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
          Column(
            children: _transactions.map((tr){
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        )
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple
                        ),
                        'R\$ ${tr.value.toStringAsFixed(2)}',
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                          tr.title
                        ),
                      ],
                    ),
                        Text(
                          style: TextStyle(
                            color: Colors.grey
                          ),
                          DateFormat('d MMM y').format(tr.date)
                        ),
                  ],
                )
              );
            }).toList(),
          ),
          Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Título',
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Valor{R\$}'
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        onPressed: () {  },
                        child: const Text('Nova Transação')
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}