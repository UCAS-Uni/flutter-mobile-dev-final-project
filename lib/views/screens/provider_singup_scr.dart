import 'package:flutter/material.dart';
import 'package:flutter_mobile_dev_final_project/views/screens/home_scr.dart';

import '../../core/constants/app_constants.dart';
import '../../core/navigations/app_navigator.dart';
import '../widgets/custom_phone_field_wid.dart';
import '../widgets/custom_textfield_wid.dart';
import '../widgets/gradient_button_wid.dart';

class ProviderSingupScr extends StatefulWidget {
  final TextEditingController mobileController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  final TextEditingController emailController;
  const ProviderSingupScr({
    super.key,
    required this.mobileController,
    required this.passwordController,
    required this.nameController,
    required this.emailController,
  });

  @override
  State<ProviderSingupScr> createState() => _ProviderSingupScrState();
}

class _ProviderSingupScrState extends State<ProviderSingupScr> {
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
                      onTap: () => AppRouter.navigateFrom(),
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
                HugeGradientButtonWid(
                    text: "SIGN UP",
                    onTap: () {
                      AppRouter.navigateToWidget(const HomeScr());
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
