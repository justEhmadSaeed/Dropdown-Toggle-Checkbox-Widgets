import 'package:flutter/material.dart';
import 'package:sort_and_filter_ui/constants.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownValue = 'Newest First';
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownValue,
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      style: kDropdownItemsStyle,
      isExpanded: true,
      items:
          ['Newest First', 'Oldest First', 'Value High-Low', 'Value Low-High']
              .map((e) => DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  ))
              .toList(),
      underline: Container(
        height: 3,
        color: Colors.teal,
      ),
    );
  }
}
