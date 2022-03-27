import 'package:flutter/material.dart';

class ToggleButtonScreen extends StatefulWidget {
  const ToggleButtonScreen({Key? key}) : super(key: key);
  _ToggleButtonScreenState createState() => _ToggleButtonScreenState();
}

class _ToggleButtonScreenState extends State<ToggleButtonScreen> {
  List<bool> toggleValue = [
    true,
    false,
    false,
    false
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toggle Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Toggle Button',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            ToggleButtons(
              borderColor: Colors.black,
              children: [
                Icon(Icons.home),
                Icon(Icons.map),
                Icon(Icons.photo),
                Icon(Icons.settings),
              ],
              isSelected: toggleValue,
              onPressed: (index) {
                setState(() {
                  toggleValue[index] = !toggleValue[index];
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
