import 'package:flutter/material.dart';
import 'package:management_file/components/my_button.dart';
import 'package:management_file/components/my_textfield.dart';
class LoginPage extends StatelessWidget{
  LoginPage({super.key});
  //text editing controller
  final usernameController=TextEditingController();
  final passwordController=TextEditingController();
  //final user in method
  void signUserIn(){}
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),
                // logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(height: 50),
                //welcome
                Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                    ),
                ),
                const SizedBox(height: 10),
                //username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                //password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                //forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                //sign in button
                MyButton(
                  onTap: signUserIn,
                ),
                //or continue with

                //register
              ]
            ),
          )
        )
      );
    }
}