import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'create_account.dart';

class SignUpAndSignIn extends StatelessWidget {
  static const routeName = '/sign-up-and-sign-in';

  const SignUpAndSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        // ignore: sized_box_for_whitespace
        child: Container(
          width: 400,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, //horizentally cenetre krta hai
              crossAxisAlignment:
                  CrossAxisAlignment.center, //vertically center krta hai
              children: [
                buildLogo(), //method name
                buildLogoGroupLogo(), //method name
                buildTextGroup(), //method name
                buildSignUpButton(context), // method name
                buildSignInTextButton(context), // method name
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Widget buildLogo() {
    return Center(
      child: SvgPicture.asset(
        'assets/images/moon.svg', //image add...svg
        width: 168,
        height: 30,
      ),
    );
  }

  Widget buildLogoGroupLogo() {
    return Center(
      child: Image.asset(
        'assets/images/group.png', //image add with png
        width: 333,
        height: 242,
      ),
    );
  }

  Widget buildTextGroup() {
    return Center(
      child: Column(
        children: [
          buildMainHeader(),
          buildSubHeader(),
        ],
      ),
    );
  }

  Widget buildMainHeader() {
    return const Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Center(
        child: Text(
          'We are what we do',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget buildSubHeader() {
    return const Padding(
      padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
      child: Center(
        child: Text(
          'Thousands of people are using Silent Moon for meditation',
          textAlign: TextAlign.center,
          style:
              TextStyle(fontSize: 16, color: Color.fromRGBO(161, 164, 178, 1)),
        ),
      ),
    );
  }

  Widget buildSignUpButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, SignUpScreen.routeName);
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          backgroundColor: const Color.fromRGBO(142, 151, 253, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        // ignore: sort_child_properties_last
        child: const Text(
          'SIGN UP',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget buildSignInTextButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'ALREADY HAVE AN ACCOUNT?',
              style: TextStyle(color: Color.fromRGBO(161, 164, 178, 1)),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, SignUpScreen.routeName);
              },
              child: const Text(
                'LOG IN',
                style: TextStyle(color: Color.fromRGBO(53, 229, 241, 1)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
