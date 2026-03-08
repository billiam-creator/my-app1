import 'package:flutter/material.dart';
import 'package:my_app/components/my_button.dart';
import 'package:my_app/components/my_textfield.dart';
import 'package:my_app/components/square_tile.dart';

class LoginPage extends StatelessWidget {
   LoginPage ({super.key});

  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const SizedBox(height: 50,),
            //logo
          const Icon(
            Icons.lock,
             size: 100,
          
          ),
          const SizedBox(height: 50),
            //welcome message
            Text("Welcome Back",
            style:TextStyle(color: Colors.grey[700],
            fontSize: 16,
            ),
            ),

            const SizedBox(height: 25),
          
            //username textfield
            MyTextfield(
              controller: usernameController ,
              hintTtext: 'Username',
              obscureText: false,
              
            ),

          const SizedBox(height: 10),
            //password textfield
           MyTextfield(
            controller: passwordController,
            hintTtext: 'Password',
            obscureText: true,
           ),

           const SizedBox(height: 10),
            //forgot password
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Text('Forgot Password?',
                 style:TextStyle(color: Colors.grey[500],),
                 ),
               ],
             ),
           ),

           const SizedBox(height: 20,),
            //sign in button
          MyButton(
            onTap: signUserIn,
          ),

          const SizedBox(height: 15,),

            //or continue with
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child:Divider(
              thickness: 0.5,
              color: Colors.grey[400],
              ),
              ),
              
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Or continue with',
                      style: TextStyle(color: Colors.grey[700]),),
                    ),
                  Expanded(
                    child:Divider(
              thickness: 0.5,
              color: Colors.grey[400],
              ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 50,),

          //google and apple sign in button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //google button
                SquareTile(imagePath: 'lib/images/google.png'),

                const SizedBox(width: 10,),

     //apple sign in button

            SquareTile(imagePath: 'lib/images/apple.png'),
              ]
            ),

          SizedBox(height: 20,),

            //not a member?register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?',
                style: TextStyle(color: Colors.grey[700]),),
                const SizedBox(width: 4),
                Text('Register now',
                style: TextStyle(
                  color: Colors.blue, fontWeight: FontWeight.bold,
                ),),
              ],
            )
          ],
          
          ),
        ),
      ),
    );
  }
}