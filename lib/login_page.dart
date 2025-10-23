import 'package:flutter/material.dart';
import 'package:making_a_login_page/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.3,),
            Text("Sign up to get free delivery on your first order",style:TextStyle(
              fontSize: 34,
              color: Colors.deepOrange,
              backgroundColor: Colors.blueGrey[50]
            ),),
            SizedBox(height: 60,),
           CustomTextField(
             controller: emailController,
              hintText: "Enter your Email",
              obscureText: false,
              prefixWidget: Icon(Icons.email_outlined),
            ),
            SizedBox(height: 20,),
            CustomTextField(
                controller: passwordController,
                hintText: "Enter your Password",
                obscureText: true),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                _showDialog(context);
              },
              child: Align(
                alignment: Alignment.bottomRight,
                  child: Text("Forget Password",style: TextStyle(color: Colors.red),)),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                if(emailController.text.toString() == "DarusSalam"  && passwordController.text.toString() =='1234'){
                  return debugPrint("Success");
                }else{
                  debugPrint("Error");
                }
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.deepOrange
                ),
                child: Center(
                  child: Text("Log in",style: TextStyle(color: Colors.white,fontSize: 18),),
                ),
              ),
            )

            // TextFormField(
            //   controller: emailController,
            //   style: TextStyle(
            //     fontSize: 18,
            //     color: Colors.red
            //   ),
            //   decoration: InputDecoration(
            //     hintText: "Enter your email",
            //     hintStyle: TextStyle(
            //       color: Colors.black,
            //       fontSize: 16,
            //     ),
            //     fillColor: Colors.grey[50],
            //     filled: true,
            //     prefixIcon: Icon(Icons.email_outlined),
            //     prefixIconColor: Colors.cyan,
            //     // labelText: "Email",
            //     enabledBorder: OutlineInputBorder(
            //     ),
            //     focusedBorder: OutlineInputBorder()
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context){
  showDialog(
      context: context,
    builder: (BuildContext context){
        return AlertDialog(
          title: Text('Alert'),
          content: Text("This is simple Alert Dialog"),
          actions: [
            TextButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text("ok"))
          ],
        );
    }

  );
}
