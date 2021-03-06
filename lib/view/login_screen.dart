import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: const LoginForm(),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage("assets/images/lockimage.png"),
            height: 100,
            width: 100,
          ),
          const Text(
            "Login Form",
            style: TextStyle(fontSize: 20.0, fontFamily: 'Bebas'),
          ),
          const SizedBox(height: 40),
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.account_circle),
                border: OutlineInputBorder(),
                labelText: "Username"),
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.lock),
                border: OutlineInputBorder(),
                labelText: "Password"),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(child: const Text("Login"), onPressed: () {

              }),



            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("New here? "),
              TextButton(onPressed: (){

                Navigator.pushNamed(context, "/register");
              }, child: Text("Register"))

            ],
          ),

        ],
      ),
    );
  }
}
