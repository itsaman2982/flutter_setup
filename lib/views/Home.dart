import 'package:firstapp/views/sidebar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: const Center(
          child: Text(
        'home Screen',
        style: TextStyle(
          fontSize: 25,
          fontFamily: 'BebasNeue',
        ),
      )),
    );
  }
}
