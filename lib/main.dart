import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Allinput.dart';
import 'FormScreen.dart';
import 'checkedbox.dart';
import 'dropdown.dart';
import 'radioButton.dart';
import 'switch.dart';
import 'toggleButton.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Widgets'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(children: [
            RaisedButton(
              onPressed: () {
                Get.to(FormFieldScreen());
              },
              child: Text('Form Field'),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Get.to(CheckedBoxScreen());
              },
              child: Text('checked Box'),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Get.to(DropDownScreen());
              },
              child: Text('Drop Down'),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Get.to(RadioButtonScreen());
              },
              child: Text('Radio Button'),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Get.to(SwitchScreen());
              },
              child: Text('Switch button'),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Get.to(ToggleButtonScreen());
              },
              child: Text('Toggle button'),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Get.to(AllInputWgtScreen());
              },
              child: Text('All Input Widget'),
            ),
          ]),
        ),
      ),
    );
  }
}
