import 'package:flutter/material.dart';
import 'package:flutter_mobile_dev_final_project/controllers/state_manager/auth_provider.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_constants.dart';
import '../../core/navigations/app_navigator.dart';
import '../widgets/custom_textfield_wid.dart';
import '../widgets/gradient_button_wid.dart';
import 'home_scr.dart';
import 'signup_scr.dart';

class ProviderSigninScr extends StatefulWidget {
  final TextEditingController passwordController;
  final TextEditingController emailController;
  const ProviderSigninScr({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  State<ProviderSigninScr> createState() => _ProviderSigninScrState();
}

class _ProviderSigninScrState extends State<ProviderSigninScr> {
  bool _isRememberChecked = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: ((context, provider, child) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(height: 30),
              CustomTextFieldWid(
                textHint: 'Email',
                controller: widget.emailController,
              ),
              const SizedBox(height: 20),
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
                        onPressed: () {},
                        child: const Text("forgot password ?")),
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
                            AppRouter.navigateToWidget(const SignUpScr(
                              selectedPage: 0,
                            ));
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
                    HugeGradientButtonWid(
                        text: "LOGIN",
                        onTap: () {
                          provider.signIn();
                        }),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      AppRouter.navigateWithReplacementToWidget(
                          const HomeScr());
                    },
                    child: Text(
                      "Get Start Now",
                      style: TextStyle(
                        fontSize: normalFontSize,
                        color: blackColor,
                        fontWeight: FontWeight.w600,
                      ),
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
      }),
    );
  }
}
