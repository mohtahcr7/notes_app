import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onSaved,
  });
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'field is required';
          }
        },
        onSaved: onSaved,
        maxLines: maxLines,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: hint,

          border: BulidBorder(),
          enabledBorder: BulidBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder BulidBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.black),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
