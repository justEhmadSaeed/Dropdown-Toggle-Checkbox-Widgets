import 'package:flutter/material.dart';

class TransactionToggle extends StatefulWidget {
  @override
  _TransactionToggleState createState() => _TransactionToggleState();
}

class _TransactionToggleState extends State<TransactionToggle> {
  List<bool> _isSelected = [false, false];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.login,
              ),
              Text('Money In')
            ],
          ),
          // Text('Money In'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Money Out'),
              Icon(
                Icons.logout,
              ),
            ],
          ),
        ],
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        onPressed: (int index) {
          setState(() {
            if (!_isSelected[index]) {
              if (index == 0) {
                _isSelected[0] = true;
                _isSelected[1] = false;
              } else {
                _isSelected[1] = true;
                _isSelected[0] = false;
              }
            }
          });
        },
        isSelected: _isSelected,
        borderRadius: BorderRadius.circular(30),
        selectedColor: Colors.white,
        fillColor: Colors.teal,
        borderColor: Colors.teal,
        selectedBorderColor: Colors.teal,
        borderWidth: 2,
        splashColor: Colors.teal[100],
        constraints: BoxConstraints(maxWidth: 170, minHeight: 50),
      ),
    );
  }
}
