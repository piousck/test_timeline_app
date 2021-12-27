import 'dart:html';

import 'package:flutter/material.dart';
import 'package:test_timeline_app/components/sidebar.dart';
import 'package:collapsible_sidebar/collapsible_sidebar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 10,
          backgroundColor: Colors.amber,
        ),
        drawer:  NavigationDrawer());
  }
}
