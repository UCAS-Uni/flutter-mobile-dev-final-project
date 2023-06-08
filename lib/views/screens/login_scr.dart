import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';
import '../widgets/app_logo_wid.dart';
import 'customer_signin_scr.dart';
import 'provider_singin_scr.dart';

class LoginScr extends StatefulWidget {
  const LoginScr({super.key});

  @override
  State<LoginScr> createState() => _LoginScrState();
}

class _LoginScrState extends State<LoginScr> with TickerProviderStateMixin {
  late final TabController _tabController;
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _customerNumberController =
      TextEditingController();
  final TextEditingController _providerPasswordController =
      TextEditingController();

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const AppLogoWid(),
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
                            ProviderSigninScr(
                              mobileController: _mobileNumberController,
                              passwordController: _providerPasswordController,
                            ),
                            CustomerSinginScr(
                              mobileController: _mobileNumberController,
                              passwordController: _customerNumberController,
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
    );
  }
}
