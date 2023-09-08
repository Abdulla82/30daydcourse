import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final int day = 10;
    final String name = "hello g";

    return Scaffold(
      appBar: AppBar(
        title: Text("Google App"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          child: Text('Welcome infogle $day  $name'),
        ),
      ),
      drawer: Divider(),
    );
  }
}
