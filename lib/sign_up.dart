// Authored By: Erin Danielle B. Toledana
// Company: PlanWise Lab
// Project: Minalima
// Feature: [MIN-002] Sign Up Page
// Description: This feature is where users create their accounts.

import 'package:flutter/material.dart';
import 'components/textfields.dart';
import 'components/buttons.dart';
import 'components/socials.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool userAgreement = false;

  void loginUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Align content to the top
            crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start horizontally
            children: [
              const SizedBox(height: 20),
              
              // header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // first and last name textfields
              Row(
                children: [
                  const SizedBox(width: 25),
                  Expanded(
                    child: TextFields(
                      controller: usernameController,
                      hintText: 'First Name',
                      obscureText: false,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFields(
                      controller: usernameController,
                      hintText: 'Last Name',
                      obscureText: false,
                    ),
                  ),
                  const SizedBox(width: 25),
                ],
              ),

              const SizedBox(height: 12.5),

              // birthday, age, and sex textfields
              Row(
                children: [
                  const SizedBox(width: 25),
                  Expanded(
                    flex: 2,
                    child: TextFields(
                      controller: usernameController,
                      hintText: 'Birth Date',
                      obscureText: false,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    flex: 1,
                    child: TextFields(
                      controller: usernameController,
                      hintText: 'Age',
                      obscureText: false,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    flex: 1,
                    child: TextFields(
                      controller: usernameController,
                      hintText: 'Sex',
                      obscureText: false,
                    ),
                  ),
                  const SizedBox(width: 25),
                ],
              ),

              const SizedBox(height: 12.5),

              // country textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFields(
                  controller: usernameController,
                  hintText: 'Country',
                  obscureText: false,
                ),
              ),
              
              const SizedBox(height: 12.5),

              // email textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFields(
                  controller: usernameController,
                  hintText: 'Email',
                  obscureText: false,
                ),
              ),
              
              const SizedBox(height: 12.5),

              // create password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFields(
                  controller: passwordController,
                  hintText: 'Create Password',
                  obscureText: true,
                ),
              ),

              const SizedBox(height: 12.5),

              // confirm password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFields(
                  controller: passwordController,
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),
              ),
              
              const SizedBox(height: 10),

              // privacy policy and terms of use
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Checkbox(
                      value: userAgreement,
                      onChanged: (value) {
                        // Update the state of the checkbox
                        setState(() {
                          userAgreement = value!;
                        });
                      },
                    ),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.grey[700]),
                          children: [
                            TextSpan(text: 'I read and agree to the '),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(color: Colors.blue),
                              // Add a GestureDetector or InkWell here to handle the tap event for the Privacy Policy
                            ),
                            TextSpan(text: ' and '),
                            TextSpan(
                              text: 'Terms of Use',
                              style: TextStyle(color: Colors.blue),
                              // Add a GestureDetector or InkWell here to handle the tap event for the Terms of Use
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // "Create Account" button
              Buttons(
                onTap: loginUser,
                label: 'Create Account',
              ),

              const SizedBox(height: 30),

              // "or sign up with"
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
                        'or sign up with',
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
            ],
          ),
        ),
      ),
    );
  }
}