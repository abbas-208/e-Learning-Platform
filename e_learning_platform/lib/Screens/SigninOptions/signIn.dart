import 'package:e_learning_platform/Screens/SigninOptions/signUp.dart';
import 'package:e_learning_platform/Services/Authentication.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Authentication authentication = Authentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 200.0),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: TextButton.icon(
                    onPressed: () async {
                      await authentication.googleSignIn();
                    },
                    icon: Icon(EvaIcons.google),
                    label: Text('Sign in with Google'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      // foregroundColor:
                      //     MaterialStateProperty.all<Color>(Colors.black),
                      // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      //     RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(18.0),
                      //         side: BorderSide(color: Colors.white)))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(EvaIcons.facebook),
                    label: Text('Sign in with Facebok'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      // foregroundColor:
                      //     MaterialStateProperty.all<Color>(Colors.black),
                      // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      //     RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(18.0),
                      //         side: BorderSide(color: Colors.white)))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.apple),
                    label: Text('Sign in with apple'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      // foregroundColor:
                      //     MaterialStateProperty.all<Color>(Colors.black),
                      // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      //     RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(18.0),
                      //         side: BorderSide(color: Colors.white)))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0),
                  child: Row(
                    children: [
                      Text('New here?', style: TextStyle(color: Colors.white)),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  child: SignUp(),
                                  type: PageTransitionType.bottomToTop));
                        },
                        child: Text(
                          'Create an account',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/landingpagebg.jpg',
                  ),
                  fit: BoxFit.fitHeight,
                  colorFilter:
                      ColorFilter.mode(Colors.black54, BlendMode.darken)))),
    );
  }
}
