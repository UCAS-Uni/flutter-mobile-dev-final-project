import 'package:flutter/material.dart';
import 'package:flutter_mobile_dev_final_project/models/entities/app_response.dart';
import 'package:flutter_mobile_dev_final_project/models/entities/work_model.dart';
import 'package:flutter_mobile_dev_final_project/views/screens/home_scr.dart';
import 'package:get/get.dart';

import '../../core/navigations/app_navigator.dart';
import '../../models/entities/user_model.dart';
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
  List<WorkModel> allWorks = [];

  registerNewUser() async {
    var credential = await AuthHelper.getInstance.registerUser(
      {
        "email": singupCustomerEmailController.text,
        "password": singupCustomerPasswordController.text,
        "name": singupCustomerNameController.text,
        "phone": singupCustomerMobileNumberController.text,
      },
    );
    var newUser = UserModel(
      email: singupCustomerEmailController.text,
      password: singupCustomerPasswordController.text,
      name: singupCustomerNameController.text,
      phone: singupCustomerMobileNumberController.text,
    );
    if (credential.data != null) {
      AppRouter.navigateWithReplacementToWidget(HomeScr());
    } else {
      // Show alert dialog with error message

      Get.snackbar(
        "Failed",
        "Invalid Register Info",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      // showDialog(
      //   context: AppRouter.navigatorKey.currentContext!,
      //   builder: (context) {
      //     return Container(
      //       child: Text("Invalid Register Info"),
      //     );
      //   },
      // );
    }
  }

  signIn() async {
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
      await getAllWorks();
      AppRouter.navigateWithReplacementToWidget(HomeScr());
      notifyListeners();
    } else {
      Get.snackbar(
        "Failed",
        "Invalid Login Info",
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  getAllWorks() async {
    AppResponse allWorksResponse = await AuthHelper.getInstance.getAllWorks();

    if (allWorksResponse.data != null) {
      for (var item in allWorksResponse.data) {
        allWorks.add(WorkModel.fromJson(item));
      }
      print("Works Number  ${allWorks.length}");
      // notifyListeners();
    } else {
      showDialog(
        context: AppRouter.navigatorKey.currentContext!,
        builder: (context) {
          return Container(
            child: Text("Invalid Request"),
          );
        },
      );
    }
  }
}
