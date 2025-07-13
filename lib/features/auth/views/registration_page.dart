import 'package:awt_lab/core/widgets/buttons.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign up')),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value != null && value.isNotEmpty) {
                    return null;
                  } else {
                    return 'Email is required';
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
              TextFormField(
                controller: _passwordController,
                validator: (value) {
                  if (value != null && value.isNotEmpty) {
                    return null;
                  } else {
                    return 'Password is required';
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              TextFormField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                ),

                validator: (value) {
                  if (value != null && value.isNotEmpty) {
                    if (value != _passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  } else {
                    return 'Confirm Password is required';
                  }
                },
              ),

              CustomButton(
                title: 'Sign up',
                onTap: () {

                  
                  print('Sign up Tapped');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
