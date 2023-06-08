import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../widgets/custom_phone_field_wid.dart';
import '../../../widgets/custom_textfield_wid.dart';
import '../../../widgets/gradient_button_wid.dart';

class ProviderSignUpScreen extends StatefulWidget {
  final TextEditingController mobileController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  final TextEditingController emailController;
  const ProviderSignUpScreen({
    super.key,
    required this.mobileController,
    required this.passwordController,
    required this.nameController,
    required this.emailController,
  });

  @override
  State<ProviderSignUpScreen> createState() => _ProviderSignUpScreenState();
}

class _ProviderSignUpScreenState extends State<ProviderSignUpScreen> {
  bool _isRememberChecked = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(height: 35),
          CustomTextFieldWid(
            textHint: 'Full Name',
            controller: widget.nameController,
          ),
          const SizedBox(height: 10),
          CustomTextFieldWid(
            textHint: 'Email',
            controller: widget.emailController,
          ),
          const SizedBox(height: 10),
          CustomPhoneFieldWid(controller: widget.mobileController),
          const SizedBox(height: 10),
          CustomTextFieldWid(
            textHint: 'Password',
            controller: widget.passwordController,
            isPassword: true,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  shape: const CircleBorder(),
                  activeColor: primaryColor,
                  value: _isRememberChecked,
                  onChanged: (value) {
                    setState(() {
                      _isRememberChecked = value!;
                    });
                  },
                ),
                const Text(
                  "I Read and Accept Home Service",
                  style: TextStyle(fontSize: 10),
                ),
                GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "  Terms & Conditions",
                      style: TextStyle(
                        fontSize: 10,
                        color: primaryColor,
                      ),
                    )),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Have Account?",
                      style: TextStyle(fontSize: normalFontSize),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: const Text(
                        "SIGN IN",
                        style: TextStyle(
                          fontSize: normalFontSize,
                          color: primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                HugeGradientButtonWid(text: "SIGN UP", onTap: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
