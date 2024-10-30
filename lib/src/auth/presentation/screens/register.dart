import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartapp/global_core/cubits/widgets_helper/widgets_helper_cubit.dart';
import 'package:smartapp/global_core/widgets/textfields/email_field.dart';

import '../../../../global_core/widgets/textfields/info_field.dart';
import '../../../../global_core/widgets/textfields/password_field.dart';
import '../../core/parameters.dart';
import '../blocs/register/register_bloc.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _age = TextEditingController();

  final FocusNode _usernameFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _firstNameFocus = FocusNode();
  final FocusNode _lastNameFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _ageFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WidgetsHelperCubit<String?>>(
      create: (context) => WidgetsHelperCubit<String?>(null),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocBuilder<WidgetsHelperCubit<String?>, String?>(
          builder: (context, selectedGender) {
            return SingleChildScrollView(
              child: SafeArea(
                child: Form(
                  key: _key,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sign up',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                          ),
                        ),
                        const Text(
                          'Create an account for more exciting offers',
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
                          height: 20.0,
                        ),
                        EmailTextField(
                          controller: _email,
                          focus: _emailFocus,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        InformationTextField(
                          fieldName: "First Name",
                          icon: const Icon(Icons.person),
                          controller: _firstName,
                          focus: _firstNameFocus,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        InformationTextField(
                          fieldName: "Last Name",
                          icon: const Icon(Icons.person),
                          controller: _lastName,
                          focus: _lastNameFocus,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                decoration: BoxDecoration(border: Border.all(width: 1.0), borderRadius: BorderRadius.circular(8.0)),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    isExpanded: true,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    icon: selectedGender == null
                                      ? null 
                                      : Icon(selectedGender == 'Male' ? Icons.male : Icons.female),
                                    dropdownColor: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(8.0),
                                    items: <String>["Male", "Female"].map((String items) {
                                      return DropdownMenuItem<String>(value: items, child: Text(items));
                                    }).toList(),
                                    hint: const Text('Gender'),
                                    value: selectedGender,
                                    onChanged: (value) => context.read<WidgetsHelperCubit<String?>>().onUpdateState(value!),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: InformationTextField(
                                  fieldName: "Age",
                                  icon: const Icon(Icons.calendar_month),
                                  controller: _age,
                                  focus: _ageFocus,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_key.currentState!.validate() && selectedGender != null) {
                                context.read<RegisterBloc>().add(
                                  CreateAccount(
                                    RegisterParams(
                                      username: _username.text,
                                      password: _password.text,
                                      email: _email.text,
                                      firstName: _firstName.text,
                                      lastName: _lastName.text,
                                      gender: selectedGender,
                                      age: int.tryParse(_age.text) ?? 0
                                    ),
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF2563EB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3.0),
                              ),
                              shadowColor: Colors.black,
                              elevation: 5.0,
                            ),
                            child: const Text(
                              'Create Account',
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
                            const Text("I already have an account!"),
                            const SizedBox(
                              width: 5.0,
                            ),
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: const Text(
                                'Sign in',
                                style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF2563EB)),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
