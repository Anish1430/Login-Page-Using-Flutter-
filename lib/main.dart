import 'package:flutter/material.dart';
import 'log_in.dart';
import 'create_account.dart';
import 'sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //console pr debug ko hide kr
      title: 'Silent Moon',

      ///Show the Title of Appn aur web bar.....
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          const SignUpAndSignIn(), //its shows the root file means agar app run krega to phle SignUpAndSignIn bar khulega then SignIn then SignUp like This
      routes: {
        //Three named routes we provide to you for follow the Mvvc architecture for the Good practice each seperate method call wit same file....
        SignUpAndSignIn.routeName: (context) => const SignUpAndSignIn(),
        SignInScreen.routeName: (context) => SignInScreen(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
      },
    );
  }
}
