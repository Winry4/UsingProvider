import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'button_widget.dart';

class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<ButtonWidget>(context).count;
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Container(
        color: Colors.purple[200],
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              '$counter',
              style: TextStyle(
                fontSize: 42.0,
                letterSpacing: -2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
