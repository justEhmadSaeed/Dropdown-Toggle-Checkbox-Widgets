import 'package:flutter/material.dart';
import 'package:sort_and_filter_ui/constants.dart';

class CheckBoxList extends StatefulWidget {
  CheckBoxList({required this.children}) {
    this.values = List.generate(children.length, (index) => false);
  }
  final List<String> children;
  // final int count;
  late final List<bool> values;
  @override
  _CheckBoxListState createState() => _CheckBoxListState();
}

class _CheckBoxListState extends State<CheckBoxList> {
  @override
  Widget build(BuildContext context) {
    var children = widget.children;
    var values = widget.values;
    return Column(
        children: children.map((element) {
      int index = children.indexOf(element);
      return CheckboxListTile(
        activeColor: Colors.teal,
        title: Text(
          element,
          style: kCheckboxListTileStyle,
        ),
        value: values[index],
        onChanged: (bool? value) {
          setState(() {
            values[index] = value!;
          });
        },
      );
    }).toList());
  }
}
