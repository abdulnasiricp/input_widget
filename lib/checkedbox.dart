import 'package:flutter/material.dart';

class CheckedBoxScreen extends StatefulWidget {
  const CheckedBoxScreen({Key? key}) : super(key: key);
  _CheckedBoxScreenState createState() => _CheckedBoxScreenState();
}

class _CheckedBoxScreenState extends State<CheckedBoxScreen> {
  bool cricheck = false;
  bool ftbcheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckedBox '),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Checkbox(
                value: cricheck,
                activeColor: Colors.amberAccent,
                onChanged: (value) {
                  setState(() {
                    cricheck = value!;
                  });
                }),
            Text('Cricket'),
            Checkbox(
                value: ftbcheck,
                activeColor: Colors.amberAccent,
                onChanged: (value) {
                  setState(() {
                    ftbcheck = value!;
                  });
                }),
            Text('FootBall'),
          ],
        ),
      ),
    );
  }
}
