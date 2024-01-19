import 'package:flutter/material.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Aboutus Screen'),
      ),
      body: const Center(
          child: Text(
        'Aboutus Screen',
        style: TextStyle(
          fontSize: 25,
          fontFamily: 'BebasNeue',
        ),
      )),
    );
  }
}
