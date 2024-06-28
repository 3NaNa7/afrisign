import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;

  const CustomTextFormField({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        decoration: InputDecoration(
            label:
                Text(label, style: Theme.of(context).textTheme.displayMedium),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
