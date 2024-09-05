import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weeklyexpenses/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList(this.transactions, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (ctx,index){
              final tr = transactions[index];
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
            })
          );
        }      
}