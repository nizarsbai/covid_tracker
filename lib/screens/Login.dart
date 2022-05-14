import 'Register.dart';
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text('Covid Tracker'),
        actions: [
          TextButton.icon(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
              },
              icon: Icon(Icons.person),
              label: Text('Register'))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Image.asset('assets/images/covid.png'),
              SizedBox(height: 50.0,),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'email',
                    prefixIcon: Icon(Icons.person),
                    fillColor: Colors.white,
                    filled: true
                ),
                onChanged: (val) {
                  setState(() {
                    email = val;
                  });
                },
                validator: (val) => val!.isEmpty ? 'Enter a valid email':null,
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'password',
                    prefixIcon: Icon(Icons.lock),
                    fillColor: Colors.white,
                    filled: true
                ),
                onChanged: (val) {
                  setState(() {
                    password = val;
                  });
                },
                validator: (val) => val!.length < 6 ?
                'Enter a valid password 6+ Chars':null,
                obscureText: true,
              ),
              SizedBox(height: 20.0,),
              ElevatedButton(

                child: Text('Sign In',style: TextStyle(color: Colors.white),),
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    print('ok !!!');
                  }

                },

              )

            ],
          ),
        ),
      ),
    );
  }
}
