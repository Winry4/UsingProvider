import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class ButtonWidget extends StatelessWidget with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  void increment() {
    _count++;
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: FlatButton(
        color: Colors.blue[300],
        onPressed: () {
          Provider.of<ButtonWidget>(context, listen: false).increment();
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Update counter',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36.0,
              letterSpacing: -2.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
