import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final TextInputType? keyboardType;
  final String? hintText;
  final Widget? prefixIcon;
  // final String? initialValue;
  // final Function(String)? onChanged;
  final TextEditingController? controller;

  const CustomTextFieldWidget(
      {super.key,
      this.keyboardType,
      this.hintText,
      this.prefixIcon,
      // this.initialValue,
      // this.onChanged,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black),
      controller: controller,
      // initialValue: initialValue,
      // onChanged: onChanged,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        // labelStyle: TextStyle(color: Colors.amber),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Colors.green),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Colors.green),
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Color.fromARGB(255, 232, 232, 232),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: prefixIcon,
        // prefixIconColor: Color.fromARGB(255, 0, 0, 0),
        contentPadding: const EdgeInsets.all(18),
      ),
    );
  }
}
