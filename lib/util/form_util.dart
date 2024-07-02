import 'package:flutter/material.dart';

Widget buildTextFormField({
  required String label,
  TextEditingController? controller,
  required Color borderColor,
  TextStyle? labelStyle,
  TextInputType keyboardType = TextInputType.text,
  bool? obscureText, 
}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: borderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: borderColor, width: 2.0),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 2.0),
      ),
      labelText: label,
      labelStyle: labelStyle,
    ),
    textInputAction: TextInputAction.next,
    keyboardType: keyboardType,
    obscureText: obscureText ?? true,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return '$label cannot be empty';
      }
      return null;
    },
  );
}
