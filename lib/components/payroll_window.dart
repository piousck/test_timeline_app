import 'package:flutter/material.dart';

class PayrollWindow
    extends StatelessWidget {
  const PayrollWindow({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 500,
      width: 600,
      child: Card(
        elevation: 5,
        child: Text("My Payroll Data"),
      ),
    );
  }
}
