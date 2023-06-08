import 'package:flutter/material.dart';
import 'package:flutter_mobile_dev_final_project/models/entities/app_response.dart';
import 'package:flutter_mobile_dev_final_project/views/screens/home_scr.dart';

import '../../core/navigations/app_navigator.dart';
import '../../models/entities/user_models.dart';
import '../../models/network/api_manager.dart';

class AuthProvider extends ChangeNotifier {
  final TextEditingController singinProviderEmailController =
      TextEditingController();
  final TextEditingController singinProviderPasswordController =
      TextEditingController();
  final TextEditingController singinCustomerEmailController =
      TextEditingController();
  final TextEditingController singinCustomerPasswordController =
      TextEditingController();

  final TextEditingController singupProviderNameController =
      TextEditingController();
  final TextEditingController singupProviderEmailController =
      TextEditingController();
  final TextEditingController singupProviderMobileNumberController =
      TextEditingController();
  final TextEditingController singupProviderPasswordController =
      TextEditingController();
  final TextEditingController singupCustomerNameController =
      TextEditingController();
  final TextEditingController singupCustomerEmailController =
      TextEditingController();
  final TextEditingController singupCustomerMobileNumberController =
      TextEditingController();
  final TextEditingController singupCustomerPasswordController =
      TextEditingController();
  bool isSignedIn = false;

  registerNewUser() async {
    var credential = await AuthHelper.getInstance.registerUser(
      {
        // "email": singupCustomerEmailController.text,
        // "password": singupCustomerPasswordController.text,
        // "name":   signupNameController.text,
        // "phone": singupMobileNumberController.text,
      },
    );
    var newUser = UserModel(
        // email: singupEmailController.text,
        // password: singupCustomerPasswordController.text,
        // name: signupNameController.text,
        // phone: singupMobileNumberController.text,
        );
    if (credential != null) {
      // AppRouter.navigateWithReplacementToWidget(CategoriesScreen());
      // navigate to home screen
    } else {
      // Show alert dialog with error message
      showDialog(
        context: AppRouter.navigatorKey.currentContext!,
        builder: (context) {
          return Container(
            child: Text("Invalid Register Info"),
          );
        },
      );
    }
  }

  signIn() async {
    print("Provider email: ${singinProviderEmailController.text}");
    print("Provider password: ${singinProviderPasswordController.text}");
    print("Customer email: ${singinCustomerEmailController.text}");
    print("Customer password: ${singinCustomerPasswordController.text}");

    AppResponse credential = await AuthHelper.getInstance.loginUser(
      {
        "email": singinProviderEmailController.text == ""
            ? singinCustomerEmailController.text
            : singinProviderEmailController.text,
        "password": singinProviderPasswordController.text == ""
            ? singinCustomerPasswordController.text
            : singinProviderPasswordController.text,
      },
    );

    if (credential.data != null) {
      AppRouter.navigateWithReplacementToWidget(HomeScr());
      // notifyListeners();
    } else {
      showDialog(
        context: AppRouter.navigatorKey.currentContext!,
        builder: (context) {
          return Container(
            child: Text("Invalid Login Info"),
          );
        },
      );
    }
  }
}
