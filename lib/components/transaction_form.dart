import 'package:flutter/material.dart';
import 'package:weeklyexpenses/models/transaction.dart';

class TransactionForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final valueController = TextEditingController();

    

    return Card(
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
              decoration: InputDecoration(labelText: 'Valor{R\$}'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {}, child: const Text('Nova Transação')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
