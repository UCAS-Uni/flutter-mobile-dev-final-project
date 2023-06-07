import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';

import '../../core/constants/app_constants.dart';
import '../../core/navigations/app_navigator.dart';
import '../widgets/gradient_button_wid.dart';

class OnboardingScr extends StatelessWidget {
  final PageController _pageController = PageController();
  OnboardingScr({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoard(
        pageController: _pageController,
        onSkip: () {
          // AppRouter.navigateWithReplacementToWidget(LoginScreen());
        },
        onDone: () {
          // AppRouter.navigateWithReplacementToWidget(LoginScreen());
        },
        onBoardData: onBoardData,
        titleStyles: const TextStyle(
          color: primaryColor,
          fontSize: meduimFontSize,
          fontWeight: FontWeight.w600,
        ),
        pageIndicatorStyle: const PageIndicatorStyle(
          width: 0,
          inactiveSize: Size.zero,
          activeSize: Size.zero,
        ),
        nextButton: OnBoardConsumer(
          builder: (context, ref, child) {
            final state = ref.watch(onBoardStateProvider);
            return GradientButtonWid(
              text: state.isLastPage ? "DONE" : "NEXT",
              onTap: () => _onNextTap(state, context),
            );
          },
        ),
      ),
    );
  }

  void _onNextTap(OnBoardState onBoardState, BuildContext context) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      //  AppRouter.navigateWithReplacementToWidget(LoginScreen());
    }
  }
}

final List<OnBoardModel> onBoardData = [
  const OnBoardModel(
    title: "Fast reservation with technicians and craftsmen",
    description: "",
    imgUrl: "assets/images/onboarding-1.png",
  ),
  const OnBoardModel(
    title: "Fast reservation with technicians and craftsmen",
    description: "",
    imgUrl: "assets/images/onboarding-2.png",
  ),
  const OnBoardModel(
    title: "Fast reservation with technicians and craftsmen",
    description: "",
    imgUrl: "assets/images/onboarding-1.png",
  ),
];
