import 'package:flutter/material.dart';
import 'package:newflutterproject/Pages/widgets/drower.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "codepur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Codepur App"),
      ),
      body: Center(
        child: Container(
          child: Text(
            "master flutter in $days by $name",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      drawer: const Mydrawer(),
    );
  }
}
