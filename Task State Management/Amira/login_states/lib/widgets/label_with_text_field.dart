import 'package:flutter/material.dart';

class LabelWithTextField extends StatelessWidget {
  const LabelWithTextField({
    super.key,
    required this.labelField,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
    this.onChanged,
    this.controller,
    this.maxLinesOfTextField,
    this.keyboardType,
    this.errorText,
  });

  final String labelField;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final int? maxLinesOfTextField;
  final TextInputType? keyboardType;
  final String? errorText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelField,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          const SizedBox(height: 10),
          TextFormField(
            keyboardType: keyboardType,
            controller: controller,
            maxLines: maxLinesOfTextField ?? 1,
            onChanged: onChanged,
            validator: validator ??
                (value) {
                  if (value?.isEmpty ?? true) {
                    return "Please fill";
                  }
                  return null;
                },
            obscureText: obscureText,
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(),
              filled: true,
              errorText: errorText,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              border: const OutlineInputBorder(),
              suffixIcon: suffixIcon,
            ),
          ),
        ],
      ),
    );
  }
}
