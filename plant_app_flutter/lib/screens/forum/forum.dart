import 'package:flutter/material.dart';

class Forum extends StatelessWidget {
  const Forum({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forum and Discussion'),
      ),
      body: Container(
        child: Center(
          child: Text('Hire Workers'),
        ),
      ),
    );
  }
}
