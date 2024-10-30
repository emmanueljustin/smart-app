import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartapp/global_core/widgets/textfields/info_field.dart';
import 'package:smartapp/global_core/widgets/textfields/password_field.dart';
import 'package:smartapp/src/auth/presentation/screens/register.dart';

import '../../core/parameters.dart';
import '../blocs/login/login_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final FocusNode _usernameFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Form(
          key: _key,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 100.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/pin.svg',
                        width: 50.0,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Text('CL!CKED',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Sign in',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                        ),
                      ),
                      const Text('Travel, Explore, and find Adventure',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.0,
                        ),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      InformationTextField(
                        fieldName: "Username",
                        icon: const Icon(Icons.person),
                        controller: _username,
                        focus: _usernameFocus,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      PasswordTextField(
                        controller: _password,
                        focus: _passwordFocus,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const Text('Forgot password',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color:Color(0xFF2563EB)
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: () {
                            context.read<LoginBloc>().add(OnLogin(LoginParams(username: _username.text, password: _password.text)));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF2563EB),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                            shadowColor: Colors.black,
                            elevation: 5.0,
                          ),
                          child: const Text('Sign in',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("I don't have an account!"),
                          const SizedBox(
                            width: 5.0 ,
                          ),
                          GestureDetector(
                            onTap: () {
                              // context.read<LoginBloc>().add(const CheckHive());
                              _usernameFocus.unfocus();
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
                            child: const Text('Sign up',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color:Color(0xFF2563EB)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
