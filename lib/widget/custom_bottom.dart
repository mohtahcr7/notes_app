import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.text,
    this.ontap,
    this.isLoading = false,
  });
  final String text;
  final void Function()? ontap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.blue,
          ),
          child: Center(
            child: isLoading
                ? const CircularProgressIndicator()
                : Text(text, style: const TextStyle(fontSize: 24)),
          ),
        ),
      ),
    );
  }
}
