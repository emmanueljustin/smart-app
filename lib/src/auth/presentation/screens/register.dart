import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:smartapp/global_core/widgets/textfields/email_field.dart';
import 'package:smartapp/global_core/widgets/textfields/info_field.dart';
import 'package:smartapp/global_core/widgets/textfields/password_field.dart';

import '../../../../global_core/widgets/title.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final TextEditingController _email = TextEditingController();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _mobileNumber = TextEditingController();

  final FocusNode _emailFocus = FocusNode();
  final FocusNode _firstNameFocus = FocusNode();
  final FocusNode _lastNameFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _mobileNumberFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleHeader(title: 'Create an Account'),
                const SizedBox(
                  height: 40.0,
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 3,
                        offset: Offset(2, 0),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
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
                        height: 20.0,
                      ),
                      InformationTextField(
                        fieldName: 'First Name',
                        icon: const Icon(Icons.person),
                        controller: _firstName,
                        focus: _firstNameFocus,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      InformationTextField(
                        fieldName: 'Last Name',
                        icon: const Icon(Icons.person),
                        controller: _lastName,
                        focus: _lastNameFocus,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      InformationTextField(
                        fieldName: 'Mobile Number',
                        icon: const Icon(Icons.call),
                        controller: _mobileNumber,
                        focus: _mobileNumberFocus,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      log(_email.text);
                      log(_password.text);
                      log(_firstName.text);
                      log(_lastName.text);
                      log(_mobileNumber.text);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                      shadowColor: Colors.black,
                      elevation: 5.0,
                    ),
                    child: const Text(
                      'Create Account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
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
                      'Back',
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
    );
  }
}