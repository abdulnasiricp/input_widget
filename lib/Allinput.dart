import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllInputWgtScreen extends StatefulWidget {
  const AllInputWgtScreen({Key? key}) : super(key: key);
  _AllInputWgtScreenState createState() => _AllInputWgtScreenState();
}

class _AllInputWgtScreenState extends State<AllInputWgtScreen> {
  // Services services-Get.find<Services>();

  // final formkey = GlobalKey<FormState>();
// bool valueselected=true;
// bool switchvalue%-false;
  // TextEditingController name = TextEditingController();
  // TextEditingController number = TextEditingController();
  // TextEditingController mail = TextEditingController();
// String level='Beginner';
// bool appdev=false;
// bool webdev=false;
// bool gamedev=false;
// bool graphicdev=false;
// bool working=true;
// List<string> experience=['e-1 year','1-3 year','3-5 year','5+ year'];
// String experiencevalue='0-1 year';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Icon(Icons.settings)
        ],
        title: Text('All Input Widget'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: ListView(
          children: [
            Text(
              'Basic Detiles',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            form(),
            SizedBox(
              height: 20,
            ),
            drop(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Choose level',
              style: TextStyle(fontSize: 20),
            ),
            radio(),
            Text(
              'Wanna Learn',
              style: TextStyle(fontSize: 20),
            ),
            checkbox(),
          ],
        ),
      ),
    );
  }
}

Widget form() {
  final formkey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController mail = TextEditingController();
  return Form(
    key: formkey,
    child: ListView(
      shrinkWrap: true,
      children: [
        TextFormField(
          controller: name,
          textCapitalization: TextCapitalization.characters,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefix: Text('Mr/Mrs'),
            suffix: Icon(Icons.person),
            labelText: 'Enter your Name',
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter Valid Name';
            } else {
              return null;
            }
          },
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          controller: mail,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefix: Text(''),
            suffix: Icon(Icons.mail),
            labelText: 'Email Address',
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter Valid Email';
            } else {
              return null;
            }
          },
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          controller: number,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefix: Text('+92'),
            suffix: Icon(Icons.phone),
            labelText: 'Enter your Cantact Number',
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter Valid phone number';
            } else {
              return null;
            }
          },
        ),
      ],
    ),
  );
}

Widget drop() {
  List<String> experience = [
    '0-1 year',
    '1-2 year',
    '3-5 year',
    '5+ year',
  ];
  String experiencevalue = '0-1 year';
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        'Experince',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      SizedBox(
        width: 20,
      ),
      DropdownButton(
        value: experiencevalue,
        items: experience.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
        onChanged: (value) {
          setState(() {
            experiencevalue = value.toString();
          });
        },
      )
    ],
  );
}

void setState(Null Function() param0) {}

Widget radio() {
  String level = 'Beginner';
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
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
          Text('Beginner'),
        ],
      ),
      SizedBox(
        height: 30,
      ),
      Row(
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
          Text('Advanced'),
        ],
      ),
    ],
  );
}

Widget checkbox() {
  bool appdev = false;
  bool webdev = false;
  bool gamedev = false;
  bool graphicdev = false;

  return Column(
    // mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Row(
        children: [
          Checkbox(
              value: appdev,
              activeColor: Colors.amberAccent,
              onChanged: (value) {
                setState(() {
                  appdev = value!;
                });
              }),
          Text('Web Developer'),
        ],
      ),
      Row(
        children: [
          Checkbox(
              value: webdev,
              activeColor: Colors.amberAccent,
              onChanged: (value) {
                setState(() {
                  webdev = value!;
                });
              }),
          Text('Game Developer'),
        ],
      ),
      Row(
        children: [
          Checkbox(
              value: gamedev,
              activeColor: Colors.amberAccent,
              onChanged: (value) {
                setState(() {
                  gamedev = value!;
                });
              }),
          Text('Game Developer'),
        ],
      ),
      Row(
        children: [
          Checkbox(
              value: graphicdev,
              activeColor: Colors.amberAccent,
              onChanged: (value) {
                setState(() {
                  graphicdev = value!;
                });
              }),
          Text('Graphic Developer'),
        ],
      ),
    ],
  );
}
