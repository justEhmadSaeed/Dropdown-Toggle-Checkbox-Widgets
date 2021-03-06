import 'package:sort_and_filter_ui/CheckBoxList.dart';
import 'package:sort_and_filter_ui/CustomCard.dart';
import 'package:sort_and_filter_ui/DropDown.dart';
import 'package:sort_and_filter_ui/TransactionToggle.dart';
import 'package:flutter/material.dart';
import 'package:sort_and_filter_ui/constants.dart';

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
            child: Text('CLEAR', style: kAppbarActionsStyle),
            onPressed: () {},
          ),
          TextButton(
            child: Text('APPLY', style: kAppbarActionsStyle),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            CustomCard(
              children: [
                Text(
                  'Sort by',
                  style: kHeadingStyle,
                ),
                DropDown(),
              ],
            ),
            CustomCard(
              children: [
                Text(
                  'Transaction Types',
                  style: kHeadingStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                TransactionToggle(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.login,
                      ),
                      Text('Money In'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.logout,
                      ),
                      Text('Money Out'),
                    ],
                  ),
                ])
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
            ]),
            CustomCard(
              children: [
                Text(
                  'Transaction Health',
                  style: kHeadingStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                TransactionToggle(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.recommend,
                          color: Colors.green,
                          size: 30,
                        ),
                        Text('Good'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.thumb_down,
                          color: Colors.yellow[800],
                          size: 30,
                        ),
                        Text('Okay'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.thumb_down,
                          color: Colors.red[600],
                          size: 30,
                        ),
                        Text('Bad'),
                      ],
                    ),
                  ],
                )
              ],
            ),
            CustomCard(children: [
              CheckBoxList(
                children: [
                  'Consultant Notes Only',
                  'Overdue Only',
                  'Date Range',
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
