import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'create_account.dart';

// ignore: use_key_in_widget_constructors
class SignInScreen extends StatelessWidget {
  static const routeName = '/sign-in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ignore: sized_box_for_whitespace
        child: Container(
          width: 400,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Align the icon to the start
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                welcome(),
                clickFacebook(),
                clickGoogle(),
                orEmailField(),
                emailText(),
                passwordField(),
                login(),
                forgetPassword(),
                alreadyAndSignUp(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// Widget showIcon(BuildContext context) {
//   return IconButton(
//     icon: Icon(Icons.arrow_back),
//     onPressed: () {
//       Navigator.pop(context);
//     },
//   );
// }

Widget welcome() => const Text(
      'Welcome Back!', //text shows in console.....
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );

Widget clickFacebook() {
  return Column(
    children: [
      const SizedBox(height: 20),
      ElevatedButton.icon(
        //ElevatedButton is combined two icon and label Text inside  it just like
        //Text and Icons are used in this senarior.........(icon + Text = ElevatedButton)
        onPressed: () {},
        icon: const Icon(Icons.facebook),
        label: const Text(
          'CONTINUE WITH FACEBOOK', //Text
          style: TextStyle(
            color: Color.fromRGBO(246, 241, 251, 1),
          ),
        ),
        style: ElevatedButton.styleFrom(
          // ignore: use_full_hex_values_for_flutter_colors
          backgroundColor: const Color(0xfff7583ca),
          minimumSize: const Size(double.infinity, 60),
        ),
      ),
    ],
  );
}

Widget clickGoogle() {
  return Column(
    children: [
      const SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 60),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/google_icon.svg',
              width: 20, //image add with needed width and height
              height: 20,
            ),
            const SizedBox(width: 20), // Adjust width as needed
            const Text(
              'CONTINUE WITH GOOGLE', //Text shows...

              style: TextStyle(
                  color: Color.fromRGBO(63, 65, 78,
                      1)), //text color as for the UI if you need You can changed....
            ),
          ],
        ),
      ),
    ],
  );
}

Widget orEmailField() {
  return const Column(
    children: [
      SizedBox(height: 15), // Add space before the footer
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'LOG IN WITH EMAIL', //text
            style: TextStyle(color: Color.fromRGBO(161, 164, 178, 1)),
          ),
        ],
      ),
    ],
  );
}

Widget emailText() {
  return Column(
    children: [
      const SizedBox(height: 20),
      TextFormField(
        decoration: InputDecoration(
          labelText: 'Email address',
          labelStyle: const TextStyle(color: Color.fromRGBO(161, 164, 178, 1)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(
                color:
                    Color.fromRGBO(161, 164, 178, 1)), // Set border color here
          ),
        ),
        validator: (value) {
          //agar value null hai aur empty hai dono mai se ek v truehai to hit kr jayega code
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          }
          // agar @ na mile to expression for email validation
          if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
            return 'Please enter a valid email';
          }
          return null; // Return null if the input is valid
        },
      ),
    ],
  );
}

Widget passwordField() {
  return Column(
    children: [
      const SizedBox(height: 20),
      TextFormField(
        decoration: InputDecoration(
          //It defines labelText labelStyle and border...
          labelText: 'Password', //text
          labelStyle: const TextStyle(color: Color.fromRGBO(161, 164, 178, 1)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide:
                const BorderSide(color: Color.fromRGBO(161, 164, 178, 1)),
          ),
        ),
        obscureText: true,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          }
          // Check for at least one special character (@ or #)
          if (!RegExp(r'[@#]').hasMatch(value)) {
            return 'Password must contain at least one special character (@ or #)';
          }
          return null; // Return null if the input is valid
        },
      ),
    ],
  );
}

Widget login() {
  return Column(
    children: [
      const SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {},
        // ignore: sort_child_properties_last
        child: const Text(
          'LOG IN', //text
          style: TextStyle(
            //text style color...
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          // ignore: use_full_hex_values_for_flutter_colors
          backgroundColor: const Color(0xfff7583ca),
          minimumSize: const Size(double.infinity, 50),
        ),
      ),
    ],
  );
}

Widget forgetPassword() {
  return Column(
    children: [
      TextButton(
        onPressed: () {},
        child: const Text(
          'Forgot Password?', //forget passoword
          style: TextStyle(color: Color.fromRGBO(63, 65, 78, 1)),
        ),
      ),
    ],
  );
}

Widget alreadyAndSignUp(BuildContext context) {
  return Column(
    children: [
      const SizedBox(height: 20), // Add space before the footer
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'ALREADY HAVE AN ACCOUNT?',
            //  style: TextStyle(color: Color.fromRGBO(161, 164, 178, 1))
            style: TextStyle(color: Color.fromRGBO(161, 164, 178, 1)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, SignUpScreen.routeName);
            },
            child: const Text(
              'SIGN UP',
              style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
            ),
          ),
        ],
      ),
    ],
  );
}
