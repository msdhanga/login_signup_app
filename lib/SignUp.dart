import 'package:flutter/material.dart';
import 'package:login_app/main.dart';

class Main extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUp(),
    );
  }
}

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
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
    'Sign Up',
    style: TextStyle(fontSize: 30,color: Colors.white),
    ),
    ),
    CircleAvatar(
    radius: 55,
    backgroundImage: AssetImage('assets/image/cap_ironman.jpg'),
    ),
    Container(
    margin: EdgeInsets.symmetric(horizontal: 30 , vertical: 10),
    child: TextFormField(
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    fillColor: Colors.white,
    labelText: 'Your Name',
    filled: true,
    ),
    keyboardType: TextInputType. name,
    ),
    ),
    Container(
    margin: EdgeInsets.symmetric(horizontal: 30 , vertical: 10),
    child: TextFormField(
    validator: (value){
    print(value!.length);
    if(value!.length != 10){
    return 'Number Must be 10 Characters';
    }
    else{
    return null;
    }
    },
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    prefixIcon: Icon(Icons.phone),
    prefixIconColor: Colors.green,
    fillColor: Colors.white,
    labelText: 'Number',
    filled: true,
    ),
    keyboardType: TextInputType.phone,
    ),
    ),
    Container(
    margin: EdgeInsets.symmetric(horizontal: 30 , vertical: 10),
    child: TextFormField(
    validator: (value) {
    if (value!.isEmpty) {
    return 'Please enter your email';
    }
    bool isValid = RegExp(
    r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(value);
    if (!isValid) {
    return 'Please enter a valid email';
    }
    return null;
    },
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    prefixIcon: Icon(Icons.email),
    prefixIconColor: Colors.red,
    fillColor: Colors.white,
    labelText: 'Email',
    filled: true,
    ),
    keyboardType: TextInputType.emailAddress,
    ),
    ),
    Container(
    margin: EdgeInsets.symmetric(horizontal: 30 ,vertical: 07),
    child: TextFormField(
    validator: (value){
    print(value!.length);
    if(value!.length != 6){
    return 'Password Must be 6 Characters';
    }
    else{
    return null;
    }
    },
    keyboardType: TextInputType.text,
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
    backgroundColor: Colors.redAccent , fixedSize: Size(150,20)),
    onPressed: (){
    if(_formKey.currentState!.validate()){
    print('Required');
    } else {
    print('not validate');
    }
    },
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginApp()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 15,color: Colors.blue),
                    ),
                  ),
                )
              ],
            ),
           )
          ),
        ),
        ),
      );
  }
}