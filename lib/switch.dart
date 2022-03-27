import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({Key? key}) : super(key: key);
  _SwitchScreenState createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool notification = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Button'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Notification', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Switch(
              value: notification,
              activeColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  notification = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
