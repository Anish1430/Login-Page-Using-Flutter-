import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'log_in.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/sign-up';

  const SignUpScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true; // Initially password is obscured
  bool ans = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SizedBox(
              width: 400,
              child: Form(
                key: _formKey, // Attach the GlobalKey to the Form widget
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .start, // Align the icon to the start
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    signUpHeader(),
                    signUpWithFacebookButton(),
                    signUpWithGoogleButton(),
                    signUpWithEmailText(),
                    nameField(),
                    emailField(),
                    passwordField(),
                    privacyPolicyCheckbox(),
                    getStartedButton(),
                    alreadyHaveAnAccount(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget signUpHeader() {
    return const Text(
      'Create your account',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }

  Widget signUpWithFacebookButton() {
    return Column(
      children: [
        const SizedBox(height: 20),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.facebook),
          label: const Text(
            'CONTINUE WITH FACEBOOK',
            style: TextStyle(
              color: Color.fromRGBO(246, 241, 251, 1),
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff7583ca),
            minimumSize: const Size(double.infinity, 60),
          ),
        ),
      ],
    );
  }

  Widget signUpWithGoogleButton() {
    return Column(
      children: [
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          // ignore: sort_child_properties_last
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/google_icon.svg',
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 20), // Adjust width as needed
              const Text(
                'CONTINUE WITH GOOGLE',
                style: TextStyle(color: Color.fromRGBO(63, 65, 78, 1)),
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 60),
          ),
        ),
      ],
    );
  }

  Widget signUpWithEmailText() {
    return const Column(
      children: [
        SizedBox(
          height: 15, // Add space before footer
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOG IN WITH EMAIL',
              style: TextStyle(color: Color.fromRGBO(161, 164, 178, 1)),
            ),
          ],
        ),
      ],
    );
  }

  Widget nameField() {
    return Column(
      children: [
        const SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Name',
            labelStyle: const TextStyle(
              color: Color.fromRGBO(63, 65, 78, 1),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          style: const TextStyle(
            color: Color.fromRGBO(63, 65, 78, 1),
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Please enter your name';
            } else if (value.trim().length < 2) {
              return 'Name must be at least 2 characters long';
            } else if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
              return 'Name can only contain alphabetic characters and spaces';
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget emailField() {
    return Column(
      children: [
        const SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Email address',
            labelStyle: const TextStyle(
              color: Color.fromRGBO(63, 65, 78, 1),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          style: const TextStyle(
            color: Color.fromRGBO(63, 65, 78, 1),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your email address';
            } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
              return 'Please enter a valid email address';
            }
            return null;
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
            labelText: 'Password',
            labelStyle: const TextStyle(
              color: Color.fromRGBO(63, 65, 78, 1),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility_off : Icons.visibility,
                color: const Color.fromRGBO(63, 65, 78, 1),
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
          ),
          obscureText: _obscurePassword,
          style: const TextStyle(
            color: Color.fromRGBO(63, 65, 78, 1),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            } else if (!RegExp(r'[@#]').hasMatch(value)) {
              return 'Password must contain at least one special character (@ or #)';
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget privacyPolicyCheckbox() {
    return Row(
      children: [
        Checkbox(
          value: ans,
          onChanged: (value) {
            setState(() {
              ans = value ?? false;
            });
          },
        ),
        const Text('I have read the Privacy Policy'),
      ],
    );
  }

  Widget getStartedButton() {
    return Column(
      children: [
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState?.validate() ?? false) {
              // Form is valid, proceed further
              Navigator.pop(context); // Navigate only if the form is valid
            } else {
              // Show a snackbar or any other indication that the form is invalid
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content:
                      Text('Please fix the errors in red before proceeding.'),
                ),
              );
            }
          },
          // ignore: sort_child_properties_last
          child: const Text('GET STARTED'),
          style: ElevatedButton.styleFrom(
            foregroundColor:
                const Color.fromRGBO(246, 241, 251, 1), // Updated text color
            backgroundColor: const Color.fromRGBO(142, 151, 253, 1),
            minimumSize: const Size(double.infinity, 50),
          ),
        ),
      ],
    );
  }

  Widget alreadyHaveAnAccount(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'ALREADY HAVE AN ACCOUNT?',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, SignInScreen.routeName);
              },
              child: const Text('LOG IN'),
            ),
          ],
        ),
      ],
    );
  }
}
