import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/widgets_helper/widgets_helper_cubit.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
    required this.controller,
    required this.focus
  });

  final TextEditingController controller;
  final FocusNode focus;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WidgetsHelperCubit<bool>>(
      create: (context) => WidgetsHelperCubit<bool>(false),
      child: BlocBuilder<WidgetsHelperCubit<bool>, bool>(
        builder: (context, showPassword) {
          return TextFormField(
            controller: controller,
            focusNode: focus,
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
                    color:  focus.hasFocus
                      ? Theme.of(context).colorScheme.secondary
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
                borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary),
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
    );
  }
}