import 'package:flutter/material.dart';

class CheckBoxList extends StatefulWidget {
  CheckBoxList({required this.children});
  final List<String> children;
  @override
  _CheckBoxListState createState() => _CheckBoxListState();
}

class _CheckBoxListState extends State<CheckBoxList> {
  @override
  Widget build(BuildContext context) {
    List<bool> values =
        List.generate(this.widget.children.length, (index) => false);
    return Column(
        children: widget.children
            .map(
              (element) => CheckboxListTile(
                title: Text(element),
                value: false,
                onChanged: (bool? value) {
                  setState(() {
                    values[0] = value!;
                  });
                },
              ),
            )
            .toList());
  }
}
