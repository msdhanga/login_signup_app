import 'package:flutter/material.dart';

import 'SignUp.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginApp(),
    );
  }
}

class LoginApp extends StatelessWidget {
  LoginApp({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
              Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage('assets/image/cap.jpg'),
            ),
            Container(
              margin:
              EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextFormField(
                validator: (value) {
                  print(value!.length);
                  if (value!.length != 10) {
                    return 'Number Must be 10 Characters';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                  prefixIconColor: Colors.green,
                  fillColor: Colors.white,
                  labelText: 'Enter Number',
                  filled: true,
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            Container(
              margin:
              EdgeInsets.symmetric(horizontal: 30, vertical: 07),
              child: TextFormField(
                obscureText: true,
                validator: (value) {
                  print(value!.length);
                  if (value!.length != 6) {
                    return 'Password Must be 6 Characters';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                  prefixIconColor: Colors.blue,
                  fillColor: Colors.white,
                  labelText: 'Password',
                  filled: true,
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    fixedSize: Size(150, 20)),
                onPressed: () => {
                if (_formKey.currentState!.validate()) {
                print('Required')
                }
                else {
                print('not validate')
                }
          },
            child: Text(
              'Login',
              style: TextStyle(fontSize: 22),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Sign Up',
                style: TextStyle(fontSize: 15, color: Colors.blue),
              ),
            ),
          )
          ],
        ),
      ),
    ),
    ),
    ),
    );
  }
}