import 'package:flutter/material.dart';
import 'package:weather_app/utils/app_color.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key, required this.hint, this.controller, this.validator,
  });

  final String hint;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        hintText: hint,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.borderColor
          )

        )
      ),
    );
  }
}