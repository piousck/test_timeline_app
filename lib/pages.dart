import 'dart:html';

import 'package:flutter/material.dart';
import 'package:test_timeline_app/components/payroll_window.dart';
import 'package:test_timeline_app/components/sidebar.dart';
import 'package:collapsible_sidebar/collapsible_sidebar.dart';

class MyHomePage
    extends StatefulWidget {
  MyHomePage({Key? key})
      : super(key: key);

  @override
  State<MyHomePage> createState() =>
      _MyHomePageState();
}

class _MyHomePageState
    extends State<MyHomePage> {
  var now = DateTime.now();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
        backgroundColor: Colors.amber,
      ),
      persistentFooterButtons: [
        Text("$now")
      ],
      body: Row(
        children: [
          Center(
            child: Expanded(
              flex: 1,
              child: Row(
                children: [
                  NavigationDrawer(),
                  const SizedBox(
                    width: 100,
                  ),
                  const PayrollWindow(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
