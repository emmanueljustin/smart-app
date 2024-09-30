import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartapp/global_core/widgets/textfields/email_field.dart';
import 'package:smartapp/global_core/widgets/textfields/password_field.dart';
import 'package:smartapp/global_core/widgets/title.dart';
import 'package:smartapp/src/auth/presentation/screens/register.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {

    // bool _keyboardVisible = false;

    // _keyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Stack(
                              children: [
                                Stack(
                                  children: [
                                    // 4th Stack layer
                                    Opacity(
                                      opacity: 0.1,
                                      child: Container(
                                        width: 180,
                                        height: 180,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle
                                        ),
                                      ),
                                    ),
                                    // 3rd Stack layer
                                    Positioned.fill(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Opacity(
                                          opacity: 0.2,
                                          child: Container(
                                            width: 140,
                                            height: 140,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // 2nd Stack layer
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Opacity(
                                      opacity: 0.5,
                                      child: Container(
                                        width: 110,
                                        height: 110,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // 1st Stack layer
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: SvgPicture.asset('assets/atom-svg.svg', width: 100,),
                              ),
                            ),
                            const Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Smart App',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Oilbats'
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
            
                
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 3,
                        offset: Offset(0, -4),
                      )
                    ],
                  ),
                  child: Form(
                    key: _key,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TitleHeader(title: 'Sign In'),
                          const SizedBox(
                            height: 40.0,
                          ),
                          EmailTextField(
                            controller: _email,
                            focus: _emailFocus,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          PasswordTextField(
                            controller: _password,
                            focus: _passwordFocus,
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          SizedBox(
                            height: 50.0,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              onPressed: () {
                                log(_email.text);
                                log(_password.text);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Theme.of(context).colorScheme.secondary,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                                shadowColor: Colors.black,
                                elevation: 5.0,
                              ),
                              child: const Text(
                                'Sign In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          SizedBox(
                            height: 50.0,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              onPressed: () {
                                _emailFocus.unfocus();
                                _passwordFocus.unfocus();
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) => RegisterScreen(),
                                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                      const begin = Offset(0.0, 0.1);
                                      const end = Offset.zero;
                                      const curve = Curves.ease;
            
                                      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            
                                      return SlideTransition(
                                        position: animation.drive(tween),
                                        child: child,
                                      );
                                    }
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Theme.of(context).colorScheme.secondary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                shadowColor: Colors.black,
                                elevation: 5.0,
                              ),
                              child: Text(
                                'Create Account',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.secondary,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
