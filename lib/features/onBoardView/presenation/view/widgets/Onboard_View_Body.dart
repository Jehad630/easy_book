import 'package:easy_book/features/onBoardView/presenation/view/widgets/bottomsheet_onboard.dart';
import 'package:easy_book/features/onBoardView/presenation/view/widgets/build_page.dart';
import 'package:easy_book/features/onBoardView/presenation/view/widgets/onborad_last_view.dart';
import 'package:flutter/material.dart';

class OnboardViewBody extends StatefulWidget {
  const OnboardViewBody({super.key});

  @override
  State<OnboardViewBody> createState() => _OnboardViewBodyState();
}

final controller = PageController();
bool isLastPage = false;

class _OnboardViewBodyState extends State<OnboardViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() => isLastPage = index == 2);
        },
        children: [
          BuildPage(
            title: 'Only Books Can Help You',
            subtitle:
                'Books can help you to increase your knowledge and \n become more successfully.',
            image: 'assets/images/onboard1.jpg',
          ),
          BuildPage(
            title: 'Learn Smartly',
            subtitle:
                'It’s 2025 and it’s time to learn every quickly and smartly. All books are storage in cloud and you can access all of them from your laptop or PC. ',
            image: 'assets/images/_476871824.png',
          ),
          OnboradLastView(
            title: 'Book Has Power To Chnage\n Everything',
            subtitle:
                'We have true friend in our life and the books is \n that. Book has power to chnage yourself and \n make you more valueable.',
            image: 'assets/images/Onboard (1).png',
          ),
        ],
      ),
      bottomSheet: bottomsheet_onboard(),
    );
  }
}
