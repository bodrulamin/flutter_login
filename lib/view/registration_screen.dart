import 'dart:collection';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/model.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registration Form")),
      body: SingleChildScrollView(child: RegistrationForm()),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  var _gender = "Male";
  var currentSelectedValue;
  List<String> deviceTypes = ["J2EE", "GAVE", "ACAD"];
  Map<String, TextEditingController> controllers = HashMap();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const Image(
          //   image: AssetImage("assets/images/lockimage.png"),
          //   height: 100,
          //   width: 100,
          // ),
          const Text(
            "Registration Form",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          const SizedBox(height: 40),
          TextFormField(
            controller: addController('name'),
            decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: "Name"),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: addController('mobile'),
            decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: "Mobile"),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: addController('email'),
            decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: "Email"),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Radio(
                  value: "Male",
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = "Male";
                    });
                  }),
              Text("Male"),
              Radio(
                  value: "Female",
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = "Female";
                    });
                  }),
              Text("Female"),
            ],
          ),

          const SizedBox(height: 10),
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: currentSelectedValue,
              items: deviceTypes.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  currentSelectedValue = newValue!;
                });
                print(currentSelectedValue);
              },
            ),
          ),
          TextFormField(
            controller: addController('address'),
            maxLines: null,
           // keyboardType: TextInputType.multiline,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: "Address"),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(child: const Text("Submit"), onPressed: () {
                print(controllers['name']?.text.toString());

                Student student = Student(name: "name", mobile: "mobile", email: "email", gender: "gender", courses: "courses", address: "addwress");
               print(jsonEncode(student.toMap()) ) ;
                // controllers.values.forEach((element) {
                //   print(element.text);
                // });
              }),
            ],
          ),
        ],
      ),
    );
  }

  addController(String s) {
    var controller = new TextEditingController();
    controllers[s] = controller;
    return controller;
  }
}
