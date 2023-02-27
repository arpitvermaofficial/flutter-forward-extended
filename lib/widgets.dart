import 'package:flutter/material.dart';
class card extends StatelessWidget {
  const card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Icon(
                Icons.account_box,
                color: Colors.orange,
              )),
          Expanded(flex: 4, child: Text("My Account")),
          Expanded(
              flex: 1,
              child: Icon(Icons.arrow_forward_ios_rounded))
        ],
      ),
    );
  }
}
