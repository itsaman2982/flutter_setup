import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Logout Screen'),
      ),
      body: const Center(
          child: Text(
        'Logout Screen',
        style: TextStyle(
          fontSize: 25,
          fontFamily: 'BebasNeue',
        ),
      )),
    );
  }
}
