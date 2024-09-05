import 'package:flutter/material.dart';
import 'package:weeklyexpenses/models/transaction.dart';

class TransactionForm extends StatelessWidget {

  
    final titleController = TextEditingController();
    final valueController = TextEditingController();

    final void Function(String, double) onSubmit;

    _submitForm(){
      final title = titleController.text;
      final value = double.tryParse(valueController.text) ?? 0.0;
      onSubmit(title, value);

      if(title.isEmpty || value <= 0){
        return;
      }
      onSubmit(title, value);
    }

    TransactionForm(this.onSubmit);
  @override
  Widget build(BuildContext context) {


    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              onSubmitted: (_) => _submitForm(),
              decoration: InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: valueController,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(labelText: 'Valor{R\$}'),
              onSubmitted: (_) => _submitForm(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: _submitForm(),
                    child: const Text('Nova Transação')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
