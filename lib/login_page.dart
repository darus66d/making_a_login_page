import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController emailController = TextEditingController();

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text("Sign up to get free delivery on your first order",style:TextStyle(
              fontSize: 34,
              color: Colors.deepOrange,
            ),),
            SizedBox(height: 100,),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
              ),
            )
          ],
        ),
      ),
    );
  }
}
