import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class TextFieldsWidget extends StatelessWidget {
  final TextEditingController controller;
  final String? label;
  final String? hint;
  final Widget? suffixIcon;
  final String? errorText;
  final bool? obscureText;
  final bool? isRequired;

  const TextFieldsWidget({
    Key? key,
    required this.controller,
    this.label,
    this.hint,
    this.suffixIcon,
    this.errorText,
    this.obscureText = false,
    this.isRequired = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text.rich(
            TextSpan(
              text: label,
              style: Theme.of(context).textTheme.bodyText1,
              children: [
                if (isRequired!)
                  const TextSpan(
                    text: ' *',
                    style: TextStyle(
                      color: AppColors.helperRed,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
          ),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            suffixIcon: suffixIcon,
            errorText: errorText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusColor: AppColors.primary,
          ),
          obscureText: obscureText!,
        ),
      ],
    );
  }
}
