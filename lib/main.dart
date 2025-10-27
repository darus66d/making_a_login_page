
import 'package:flutter/material.dart';
import 'package:making_a_login_page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
// import 'package:flutter/material.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const SignInScreen(),
//     );
//   }
// }
//
// class SignInScreen extends StatelessWidget {
//   const SignInScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 25.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Icon(
//               Icons.chat_bubble_outline,
//               size: 80,
//               color: Colors.green,
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               "Freedom",
//               style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 40),
//             const Text(
//               "Sign In",
//               style: TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             const SizedBox(height: 20),
//             TextField(
//               decoration: InputDecoration(
//                 hintText: 'Phone',
//                 filled: true,
//                 fillColor: Colors.grey[200],
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 15),
//             TextField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 hintText: 'Password',
//                 filled: true,
//                 fillColor: Colors.grey[200],
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             SizedBox(
//               width: double.infinity,
//               height: 50,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.green,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//                 child: const Text(
//                   'Sign in',
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 15),
//             TextButton(
//               onPressed: () {},
//               child: const Text('Forgot Password?'),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text("Don't have an account? "),
//                 TextButton(
//                   onPressed: () {},
//                   child: const Text(
//                     'Sign Up',
//                     style: TextStyle(color: Colors.green),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
