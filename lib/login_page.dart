import 'package:authentication_ui/Components/my_button.dart';
import 'package:authentication_ui/Components/my_textfield.dart';
import 'package:authentication_ui/Components/square_tile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  
  void signUserIn(){
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               const SizedBox(
                height: 10.0,
              ),

              //logo
              const Icon(Icons.lock,
              size: 100.0,
              ),

               const SizedBox(
                height: 10.0,
              ),

              //welcome back
              Text(
                'Welcome back you\'ve been missed',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(
                height: 15.0,
              ),

              //username
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(
                height: 10.0,
              ),

              //password
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              SizedBox(
                height: 10.0,
              ),

              //Forget password
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forget Password?',
                    style:  TextStyle(
                      color: Colors.grey[600],
                    ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15.0,
              ),

              //sign in
              MyButton(onTap: signUserIn),

              SizedBox(
                height: 10.0,
              ),

              //or continue with
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
                      child: Text('Or continue with',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
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

              SizedBox(
                height: 50.0,
              ),

              //google + apple
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'lib/images/google.png'),

                  SizedBox(
                    width: 10.0,
                  ),

                  SquareTile(imagePath: 'lib/images/apple.png'),
                ],
              ),

              SizedBox(
                height: 10.0,
              ),

              //not a member register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text('Register now',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
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
