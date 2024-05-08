// Authored By: Erin Danielle B. Toledana
// Company: PlanWise Lab
// Project: Minalima
// Feature: [MIN-001] Login Page
// Description: This feature asks users to log into their accounts.

import 'package:flutter/material.dart';
import 'components/textfields.dart';
import 'components/buttons.dart';
import 'components/socials.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // a method that logs users into their account
  void loginUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Image.asset(
                'lib/images/logo_v2.png',
                width: 150,
                height: 150,
              ),
              
              const SizedBox(height: 35),
        
              // "Log In"
              Text(
                'Log In',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
        
              const SizedBox(height: 20),

              // username textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFields(
                  controller: usernameController,
                  hintText: 'Email',
                  obscureText: false,
                ),
              ),
        
              const SizedBox(height: 12.5),
        
              // password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFields(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
              ),
        
              const SizedBox(height: 12.5),
        
              // "Forgot Password?"
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
        
              const SizedBox(height: 20),
        
              // "Login" button
              Buttons(
                onTap: loginUser,
                label: 'Login',
              ),
        
              const SizedBox(height: 30),
        
              // "or continue with"
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
        
              const SizedBox(height: 30),
        
              // google + facebook + apple buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // google button
                  Socials(imagePath: 'lib/icons/google.png'),
                  
                  SizedBox(width: 50),
        
                  // facebook button
                  Socials(imagePath: 'lib/icons/facebook.png'),
        
                  SizedBox(width: 50),
        
                  // apple button
                  Socials(imagePath: 'lib/icons/apple.png')
                ],
              ),
        
              const SizedBox(height: 110),
        
              // "Don't have an account? Sign Up"
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}