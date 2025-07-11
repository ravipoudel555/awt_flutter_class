import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Title')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            spacing: 20,
            children: [
              Text('Login to Continue', style: TextStyle(fontSize: 20)),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),

                  hintText: 'Password',
                ),
              ),

              // ElevatedButton(
              //   onPressed: () {
              //     print('Hello World');
              //   },
              //   child: Text('Login'),
              // ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,

                    borderRadius: BorderRadius.circular(100),
                  ),

                  child: Text('Login', style: TextStyle(color: Colors.white)),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Don\'t have an account?'),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      print('Register Tapped');
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
