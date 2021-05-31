import 'package:flutter/material.dart';

class GetPlot extends StatelessWidget {
  const GetPlot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get a Plot'),
      ),
      body: Container(
        child: Center(
          child: Text('Get a plot'),
        ),
      ),
    );
  }
}
