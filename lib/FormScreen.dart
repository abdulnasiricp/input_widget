import 'package:flutter/material.dart';

class FormFieldScreen extends StatefulWidget {
  _FormFieldScreenState createState() => _FormFieldScreenState();
}

class _FormFieldScreenState extends State<FormFieldScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: formKey,
              child: Column(children: [
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.person),
                    labelText: 'Enter your Name',
                    contentPadding: EdgeInsets.all(0),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter Valid Name';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: number,
                  decoration: InputDecoration(
                    prefix: Text('+92'),
                    suffixIcon: Icon(Icons.call),
                    labelText: 'Enter your phone Number',
                    contentPadding: EdgeInsets.all(0),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter Valid phone Number';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print('All Good!');
                    }
                  },
                  child: Text('Submit'),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
