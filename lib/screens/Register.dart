import 'package:flutter/material.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        title: Text('Covid Tracker Register'),
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
              RaisedButton(
                color: Colors.amber,
                child: Text('Sign UP',style: TextStyle(color: Colors.white),),
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
