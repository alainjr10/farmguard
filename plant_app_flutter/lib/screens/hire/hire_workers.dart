import 'package:flutter/material.dart';

class HireWorkers extends StatelessWidget {
  const HireWorkers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hire Worker'),
      ),
      body: Container(
        child: Center(
          child: Text('Hire Workers'),
        ),
      ),
    );
  }
}
