import 'package:flutter/material.dart';

class InformationTextField extends StatelessWidget {
  const InformationTextField({
    super.key,
    required this.fieldName,
    required this.icon,
    required this.controller,
    required this.focus,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType
  });

  final String fieldName;
  final Icon icon;
  final TextEditingController controller;
  final FocusNode focus;
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focus,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textCapitalization: textCapitalization,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: icon,
        labelText: fieldName,
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
          return '$fieldName textfield should not be empty';
        }
        return null;
      },
    );
  }
}