import 'package:flutter/material.dart';
import 'package:nots_app/widget/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyle(fontSize: 28)),
        Spacer(flex: 1),
        CustomSearchIcon(icon: icon),
      ],
    );
  }
}
