import 'package:easy_book/core/utilts/app_routes.dart';
import 'package:easy_book/features/splash/presenation/views/widgets/SlidingTextAnimation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splas_view_body extends StatefulWidget {
  const Splas_view_body({super.key});

  @override
  State<Splas_view_body> createState() => _Splas_view_bodyState();
}

class _Splas_view_bodyState extends State<Splas_view_body>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sildingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    initSlidingAnimation();
    NavigateToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    //adding dispose for animationController
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Image.asset("assets/images/Splash.png")),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Image.asset("assets/images/Group (1).png", height: 80),
              SizedBox(height: 20),
              SlidingTextAnimation(sildingAnimtion: sildingAnimation),
            ],
          ),
        ),
      ],
    );
  }

  // animation method
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    sildingAnimation = Tween<Offset>(
      begin: const Offset(0, 16),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  // transition method
  void NavigateToHomeView() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}
