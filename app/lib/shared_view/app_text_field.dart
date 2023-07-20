import 'package:ecommerce_app/resource/styles/text_styles.dart';
import 'package:ecommerce_app/resource/styles/ui_colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final bool? enabled;
  final bool autofocus;
  final TextEditingController? controller;
  final AutovalidateMode autovalidateMode;
  final TextInputType? keyboardType;
  final bool underlineInputBorder;
  final bool obscureText;
  final String? labelText;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? icon;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String) onChanged;
  final String? Function(String?)? validator;

  const AppTextField({
    super.key,
    this.enabled,
    this.controller,
    this.keyboardType,
    this.underlineInputBorder = false,
    this.obscureText = false,
    this.labelText,
    this.hintText,
    this.hintStyle,
    this.icon,
    this.suffixIcon,
    this.prefixIcon,
    this.autofocus = false,
    this.validator,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    InputBorder border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: UIColors.primaryTextFieldColor,
      ),
      borderRadius: BorderRadius.circular(15),
    );

    if (underlineInputBorder) {
      border = UnderlineInputBorder(
        borderSide: const BorderSide(
          color: UIColors.primaryTextFieldColor,
        ),
        borderRadius: BorderRadius.circular(15),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              '$labelText',
              style: TextStyles.contentStyle,
            ),
          ),
        const SizedBox(height: 10),
        TextFormField(
          key: key,
          enabled: enabled,
          controller: controller,
          keyboardType: keyboardType,
          autovalidateMode: autovalidateMode,
          obscureText: obscureText,
          // cursorColor: Colors.black,
          // style: const TextStyle(
          //   color: Colors.black,
          // ),
          autofocus: autofocus,
          decoration: InputDecoration(
            filled: true,
            fillColor: UIColors.primaryTextFieldColor,
            border: border,
            focusedBorder: border,
            enabledBorder: border,
            errorBorder: border,
            focusedErrorBorder: border,
            // labelText: labelText,
            // labelStyle: const TextStyle(
            //   color: Colors.white,
            // ),
            hintText: hintText,
            hintStyle: hintStyle,
            icon: icon,
            suffixIcon: suffixIcon,
            suffixIconColor: Colors.black,
            prefixIcon: prefixIcon,
            prefixIconColor: Colors.black,
          ),
          validator: validator,
          onChanged: onChanged,
          onEditingComplete: null,
          onSaved: null,
        ),
      ],
    );
  }
}
