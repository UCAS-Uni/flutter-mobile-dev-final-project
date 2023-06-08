import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_constants.dart';
import '../widgets/app_logo_wid.dart';
import 'customer_signin_scr.dart';
import 'provider_singin_scr.dart';
import '../../controllers/state_manager/auth_provider.dart';

class SigninScr extends StatefulWidget {
  const SigninScr({super.key});

  @override
  State<SigninScr> createState() => _SigninScrState();
}

class _SigninScrState extends State<SigninScr> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Consumer<AuthProvider>(
        builder: (context, provider, child) => Container(
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
                                  emailController:
                                      provider.singinProviderEmailController,
                                  passwordController: provider
                                      .singinProviderPasswordController),
                              CustomerSinginScr(
                                  emailController:
                                      provider.singinCustomerEmailController,
                                  passwordController: provider
                                      .singinCustomerPasswordController),
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
