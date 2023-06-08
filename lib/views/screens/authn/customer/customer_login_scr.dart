import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/navigations/app_navigator.dart';
import '../../../widgets/custom_phone_field_wid.dart';
import '../../../widgets/custom_textfield_wid.dart';
import '../../../widgets/gradient_button_wid.dart';

class CustomerLoginScreen extends StatefulWidget {
  final TextEditingController mobileController;
  final TextEditingController passwordController;
  const CustomerLoginScreen({
    super.key,
    required this.mobileController,
    required this.passwordController,
  });

  @override
  State<CustomerLoginScreen> createState() => _CustomerLoginScreenState();
}

class _CustomerLoginScreenState extends State<CustomerLoginScreen> {
  bool _isRememberChecked = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomPhoneFieldWid(controller: widget.mobileController),
          const SizedBox(height: 30),
          CustomTextFieldWid(
            textHint: 'Password',
            controller: widget.passwordController,
            isPassword: true,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // mainAxisSize: MainAxisSize.min,
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
                      "Remember me",
                      style: TextStyle(fontSize: smallFontSize),
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {}, child: const Text("forgot password ?")),
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
                      "New Member?",
                      style: TextStyle(fontSize: normalFontSize),
                    ),
                    GestureDetector(
                      onTap: () {
                        // AppRouter.navigateToWidget(
                        // const SignUpScreen(
                        //     selectedPage: 1,
                        //   ),
                        // );
                      },
                      child: const Text(
                        "SIGN UP",
                        style: TextStyle(
                          fontSize: normalFontSize,
                          color: primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
                HugeGradientButtonWid(text: "LOGIN", onTap: () {}),
              ],
            ),
          ),
          const Spacer(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Get Start Now",
                style: TextStyle(
                  fontSize: normalFontSize,
                  color: blackColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 7),
              Icon(Icons.arrow_forward)
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
