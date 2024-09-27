import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartapp/global_core/cubits/widgets_helper/widgets_helper_cubit.dart';

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

    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF94C4E1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // This will hold the Title or logo of the app
            Expanded(
              flex: 1,
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // if (!_keyboardVisible)
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
                            child: const Text(
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
                    // const Text(
                    //   'Smart App',
                    //   style: TextStyle(
                    //     fontSize: 30.0,
                    //     fontWeight: FontWeight.bold,
                    //     fontFamily: 'Oilbats'
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),

            // Expanded(
            //   flex: 2,
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
                        const Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 34.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        TextFormField(
                          controller: _email,
                          focusNode: _emailFocus,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.email_rounded),
                            labelText: 'E-mail',
                            labelStyle: const TextStyle(
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color(0xFF3699DB)),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red[400]!),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red[400]!),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty || value == '') {
                              return 'E-mail textfield should not be empty';
                            }
                            if (!emailRegex.hasMatch(value)) {
                              return 'This is not a valid E-mail address';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        BlocProvider<WidgetsHelperCubit<bool>>(
                          create: (context) => WidgetsHelperCubit<bool>(false),
                          child: BlocBuilder<WidgetsHelperCubit<bool>, bool>(
                            builder: (context, showPassword) {
                              return TextFormField(
                                controller: _password,
                                focusNode: _passwordFocus,
                                obscureText: !showPassword,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.lock),
                                  suffix: GestureDetector(
                                    onTap:() => context.read<WidgetsHelperCubit<bool>>().onUpdateState(!showPassword),
                                    child: Text(!showPassword
                                      ? 'Show'
                                      : 'Hide',
                                      style: TextStyle(
                                        color:  _passwordFocus.hasFocus
                                          ? const Color(0xFF3699DB)
                                          : Colors.black
                                      ),
                                    ),
                                  ),
                                  labelText: 'Password',
                                  labelStyle: const TextStyle(
                                    color: Colors.black,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xFF3699DB)),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red[400]!),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red[400]!),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty || value == '') {
                                    return 'Password textfield should not be empty';
                                  }
                                  return null;
                                },
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        SizedBox(
                          height: 50.0,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () => {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF3699DB),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                              shadowColor: Colors.black,
                              elevation: 5.0,
                            ),
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
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
                            onPressed: () => {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Color(0xFF3699DB),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              shadowColor: Colors.black,
                              elevation: 5.0,
                            ),
                            child: const Text(
                              'Create Account',
                              style: TextStyle(
                                color: Color(0xFF3699DB),
                                fontSize: 20.0,
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
            // ),
          ],
        ),
      ),
    );
  }
}
