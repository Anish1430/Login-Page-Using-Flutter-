# Basic Signup - Flutter Project

## Overview

Basic Signup is a Flutter project designed to provide a simple and elegant user interface for signing up and signing in. The app utilizes Firebase Authentication for user management and offers options for signing up with email, Google, or Facebook.

## Features

- **User Sign Up:** Create a new account with email, Google, or Facebook.
- **User Sign In:** Log in with existing credentials.
- **Form Validation:** Validate user inputs for email, password, and name.
- **Password Visibility Toggle:** Show or hide the password field.

## Project Structure

### Main Files

- `main.dart`: Entry point of the application. It sets up the routes and the initial screen.
- `sign_up_and_sign_in.dart`: Main screen with options to sign up or sign in.
- `sign_up.dart`: Screen for user sign-up with options for Google and Facebook sign-up.
- `sign_in.dart`: Screen for user sign-in.
- `colors.dart`: Defines the color palette used in the application.
- `spaces.dart`: Defines constants for spacing between widgets.
- `strings.dart`: Contains string constants used in the UI.

### Assets

**Images:**
- `assets/images/google_icon.svg`
- `assets/images/facebook_icon.svg`
- `assets/images/moon.svg`
- `assets/images/group.png`

### Dependencies

- `flutter`: SDK for Flutter.
- `cupertino_icons`: iOS icons for Flutter.
- `firebase_auth`: Firebase Authentication for user management.
- `flutter_svg`: Render SVG files in Flutter.

### Dev Dependencies

- `flutter_test`: Testing framework for Flutter.
- `flutter_lints`: Linting rules for Flutter.

## Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/your-username/basicsignup.git
    cd basicsignup
    ```

2. Install dependencies:
    ```sh
    flutter pub get
    ```

3. Run the app:
    ```sh
    flutter run
    ```

## Usage

- **Sign Up:** Click on the "Sign Up" button to create a new account. You can sign up with email, Google, or Facebook.
- **Sign In:** If you already have an account, click on the "Log In" button to sign in.

## Form Validation

- **Name Field:** Must contain at least 2 characters and only alphabetic characters and spaces.
- **Email Field:** Must be a valid email address.
- **Password Field:** Must contain at least one special character (@ or #).

## Customization

### Colors

To customize the colors, modify the `colors.dart` file:
```dart
class AppColors {
  static const Color kPrimaryColor = Color(0xff8e97fd);
  static const Color kSecondaryColor = Color(0xff7583ca);
  static const Color kGoogleButtonColor = Color.fromRGBO(63, 65, 78, 1);
  static const Color kFacebookButtonColor = Color(0xff7583ca);
}


### Image_Path

To customize the Image_path, modify the `Image_path.dart` file:
```dart
class Imagepath {
  static const String kGoogleIcon = 'assets/images/google_icon.svg';
  static const String kFacebookIcon = 'assets/images/facebook_icon.svg';
  static const String kLogoSvg = 'assets/images/moon.svg';
  static const String kGroupImage = 'assets/images/group.png';
}

### Spaces 
To customize the spaces, modify the `spaces.dart` file:
```dart

class Spaces {
  static const double welcomeToFacebookButton = 20.0;
  static const double verticalSpaceBetweenWidgets = 15.0;
  static const double signUpWithFacebookButton = 20.0;
}

### Strcons
To customize the Strcons, modify the `Strcons.dart` file:
```dart

class Strconst {
  static const String kSignUpScreenTitle = 'Create your account';
  static const String kSignInScreenTitle = 'Welcome Back!';
  static const String kSignUpWithFacebook = 'CONTINUE WITH FACEBOOK';
  static const String kSignUpWithGoogle = 'CONTINUE WITH GOOGLE';
  static const String kLogInWithEmail = 'LOG IN WITH EMAIL';
  static const String kEmailAddress = 'Email address';
  static const String kPassword = 'Password';
  static const String kLogIn = 'LOG IN';
  static const String kForgotPassword = 'Forgot Password?';
  static const String kAlreadyHaveAnAccount = 'ALREADY HAVE AN ACCOUNT?';
  static const String kSignUp = 'SIGN UP';
  static const String kGetStarted = 'GET STARTED';
  static const String kPrivacyPolicy = 'I have read the Privacy Policy';
  static const String kMainHeader = 'We are what we do';
  static const String kSubHeader =
      'Thousands of people are using Silent Moon for meditation';
}

### Reference Documentation
For further reference, please consider the following sections:

* [GitHub Link](https://github.com/Anish1430/Login-Page-Using-Flutter-)

## Contributors

- Anish Kumar Sharma
- anish.kumar20071998@gmail.com
