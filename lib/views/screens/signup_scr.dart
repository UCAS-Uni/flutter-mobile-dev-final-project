import 'package:flutter/material.dart';
import 'package:flutter_mobile_dev_final_project/views/screens/authn/provider_singup_scr.dart';

import '../../../core/constants/app_constants.dart';
import '../../widgets/custom_back_button_wid.dart';
import 'customer_signup_scr.dart';

class SignUpScr extends StatefulWidget {
  final int selectedPage;
  const SignUpScr({super.key, required this.selectedPage});

  @override
  State<SignUpScr> createState() => _SignUpScrState();
}

class _SignUpScrState extends State<SignUpScr> with TickerProviderStateMixin {
  late final TabController _tabController;
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _providerPasswordController =
      TextEditingController();
  final TextEditingController _customerPasswordController =
      TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
        initialIndex: widget.selectedPage, length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: primaryGradient,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: primaryGradient,
          ),
          child: SafeArea(
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: CustomBackBtnWid(),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    child: Column(
                      children: [
                        TabBar(
                          controller: _tabController,
                          tabs: const [
                            Tab(text: 'Service Provider'),
                            Tab(text: 'Customer'),
                          ],
                          labelColor: primaryColor,
                          unselectedLabelColor: greyColor,
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              ProviderSingupScr(
                                nameController: _nameController,
                                emailController: _emailController,
                                mobileController: _mobileNumberController,
                                passwordController: _providerPasswordController,
                              ),
                              CustomerSignupScr(
                                nameController: _nameController,
                                emailController: _emailController,
                                mobileController: _mobileNumberController,
                                passwordController: _customerPasswordController,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
