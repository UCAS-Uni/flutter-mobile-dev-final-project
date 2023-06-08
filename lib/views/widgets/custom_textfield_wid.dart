import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';

class CustomTextFieldWid extends StatefulWidget {
  final bool isLarge;
  final bool isPassword;
  final TextEditingController controller;
  final String textHint;
  const CustomTextFieldWid({
    super.key,
    this.isPassword = false,
    this.isLarge = false,
    required this.controller,
    required this.textHint,
  });

  @override
  State<CustomTextFieldWid> createState() => _CustomTextFieldWidState();
}

class _CustomTextFieldWidState extends State<CustomTextFieldWid> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 50,
      child: TextField(
        controller: widget.controller,
        style: TextStyle(
            color: widget.isPassword
                ? (!_isVisible ? primaryColor : lightGreyColor)
                : primaryColor,
            fontWeight: FontWeight.w500,
            fontSize: normalFontSize,
            overflow: TextOverflow.ellipsis),
        obscureText: widget.isPassword ? _isVisible : false,
        obscuringCharacter: '*',
        maxLines: widget.isLarge ? 4 : 1,
        decoration: InputDecoration(
          hintText: widget.textHint,
          suffixIcon: widget.isPassword
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                  child: Icon(
                    _isVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                )
              : null,
          suffixIconColor: lightGreyColor,
        ),
      ),
    );
  }
}
