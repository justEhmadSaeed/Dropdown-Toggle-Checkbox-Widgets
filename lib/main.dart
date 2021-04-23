import 'package:sort_and_filter_ui/CheckBoxList.dart';
import 'package:sort_and_filter_ui/CustomCard.dart';
import 'package:sort_and_filter_ui/DropDown.dart';
import 'package:sort_and_filter_ui/TransactionToggle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sort And Filter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // List of widgets in the drawer

    return Scaffold(
      appBar: AppBar(
        title: Text('Sort & Filter'),
        leading: Icon(Icons.cancel),
        backgroundColor: Colors.teal,
        actions: [
          TextButton(
            child: Text(
              'CLEAR',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: Text(
              'APPLY',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomCard(
              children: [
                Text(
                  'Sort by',
                  style: TextStyle(fontSize: 30),
                ),
                DropDown(),
              ],
            ),
            CustomCard(
              children: [
                Text(
                  'Transaction Types',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                TransactionToggle()
              ],
            ),
            CustomCard(children: [
              CheckBoxList(
                children: [
                  'Sale',
                  'Credit',
                  'Refund',
                  'Loan',
                  'Direct Material'
                ],
              ),
            ])
          ],
        ),
      ),
    );
  }
}
