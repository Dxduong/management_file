import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 115, 126, 229),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Image.asset(
                'lib/images/logo_kma.png',
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(height: 3),
            //welcome
            Text(
              'Management files',
              style: TextStyle(
                color: const Color.fromARGB(255, 227, 10, 10),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Sign In',
                      style:
                        TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      controller: emailController,
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                          // icon: Icon(Icons.mail),
                          prefixIcon: Icon(Icons.mail),
                          suffixIcon: emailController.text.isEmpty
                              ? Text('')
                              : GestureDetector(
                                  onTap: () {
                                    emailController.clear();
                                  },
                                  child: Icon(Icons.close)),
                          hintText: 'example@mail.com',
                          labelText: 'Username',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Colors.red, width: 1))),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      obscureText: isVisible,
                      controller: passwordController,
                      onChanged: (value) {
                        print(value);
                      },
                      //
                      decoration: InputDecoration(
                          // icon: Icon(Icons.mail),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                isVisible = !isVisible;
                                setState(() {});
                              },
                              child: Icon(isVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                          hintText: 'type your password',
                          labelText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Colors.red, width: 1))),
                    ),


                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
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
                    SizedBox(
                      height: 16,
                    ),

                    //pop up output
                    ElevatedButton(
                        onPressed: () {
                          /*showDialog(
                              context: context,
                              builder: (context) {
                                return SimpleDialog(
                                  title: Text('Your submitted data '),
                                  children: [
                                    ListTile(
                                      leading: Icon(Icons.mail),
                                      title:
                                          Text(emailController.text.toString()),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.lock),
                                      title: Text(
                                          passwordController.text.toString()),
                                    ),
                                  ],
                                );
                              }
                          );*/
                        },

                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: Text('Submit'),
                        )
                    ),


                    
                    BottomAppBar(
                      color: Colors.transparent,
                      child:Row(
                        children: [
                          Icon(Icons.contact_mail_sharp),
                          Text('  contact me: kma@actvn.edu.vn'),
                        ],
                        ),
                      elevation: 0,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
