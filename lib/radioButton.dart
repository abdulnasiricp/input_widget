import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({Key? key}) : super(key: key);
  _RadioButtonScreenState createState() => _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {
  String level = 'Beginner';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Gender',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Radio(
                groupValue: level,
                activeColor: Colors.amber,
                value: 'Beginner',
                onChanged: (value) {
                  setState(() {
                    level = value.toString();
                  });
                },
              ),
              Text('Male'),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Radio(
                groupValue: level,
                activeColor: Colors.amber,
                value: 'Advanced',
                onChanged: (value) {
                  setState(() {
                    level = value.toString();
                  });
                },
              ),
              Text('Female'),
            ],
          ),
        ],
      ),
    );
  }
}
