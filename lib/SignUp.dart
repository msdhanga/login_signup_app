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
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
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
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage('assets/image/cap_ironman.jpg'),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30 , vertical: 10),
                  child: TextFormField(
                   /* validator: (value){
                      print(value!.length);
                      if(value!.length != 10){
                        return 'Name Must be 10 Characters';
                      }
                      else{
                        return 'Required';
                      }
                    },*/
                    decoration: InputDecoration(
                      fillColor: Colors.black26,
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
                        return 'Required';
                      }
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.black26,
                      labelText: 'Number',
                      filled: true,
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30 , vertical: 10),
                  child: TextFormField(
                    validator: (value){
                      print(value!.length);
                      if(value!.length != 10){
                        return 'Email Must be @ sign';
                      }
                      else{
                        return 'Required';
                      }
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.black26,
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
                        return 'Required';
                      }
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Colors.black38,
                      labelText: 'Password',
                      filled: true,
                    ),
                  ),
                ),
                ElevatedButton(

                  style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent , fixedSize: Size(150,20)),
                  onPressed: ()=>{
                    if(_formKey.currentState!.validate()){
                      print('Required')
                    } else {
                      print('not validate')
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
                      MaterialPageRoute(builder: (context) => Login_app()),
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 25),
                  ),
                )
              ],
            ),
           )
          ),
        ),
      );
  }
}