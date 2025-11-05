import 'package:easy_book/core/utilts/app_routes.dart';
import 'package:easy_book/features/onBoardView/presenation/view/widgets/onboard_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class bottomsheet_onboard extends StatelessWidget {
  const bottomsheet_onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            child: const Text('Skip'),
            onPressed: () => controller.jumpToPage(2),
          ),
          Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const WormEffect(
                dotWidth: 10,
                dotHeight: 10,
                spacing: 16,
                activeDotColor: Colors.redAccent,
              ),
            ),
          ),
          TextButton(
            child: Text(isLastPage ? 'Done' : 'Next'),
            onPressed: () {
              if (isLastPage) {
                GoRouter.of(context).push(AppRouter.kHomeView);
              } else {
                controller.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
