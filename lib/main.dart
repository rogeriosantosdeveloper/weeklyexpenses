import 'package:flutter/material.dart';

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
      body: const Center(
      child:  Text("Versão Inicial")
      ),
    );
  }
}