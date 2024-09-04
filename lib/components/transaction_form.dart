import 'package:flutter/material.dart';
import 'package:weeklyexpenses/models/transaction.dart';

class TransactionForm extends StatelessWidget {
  const TransactionForm(Function(String title, double value) addTransaction, {super.key});



  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final valueController = TextEditingController();

    final void Function(String, double) onSubmit;
    TransactionForm(this.onSubmit);

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
                    onPressed: () {
                      final title = titleController.text;
                      final value = double.tryParse(valueController.text) ?? 0.0;
                      onSubmit(title, value);
                    },
                    child: const Text('Nova Transação')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
