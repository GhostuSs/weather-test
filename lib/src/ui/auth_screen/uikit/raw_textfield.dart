import 'package:flutter/material.dart';
import 'package:smartavia_weather/src/res/colors/app_colors.dart';

class RawTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Widget? action;
  final bool? obscure;
  final String? errorText;
  final Function(String?)? onValidate;
  final TextInputType? textInputType;

  const RawTextField(
      {Key? key,
      required this.controller,
      required this.label,
      this.action,
      this.obscure,
      this.textInputType, this.errorText, this.onValidate,})
      : super(key: key);

  @override
  Widget build(BuildContext context) => TextField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure ?? false,
        onChanged: onValidate,
        decoration: InputDecoration(
          label: Text(
            label,
          ),
          errorText: errorText,
          suffix: action,
          focusColor: AppColors.grape,
        ),
      );
}
