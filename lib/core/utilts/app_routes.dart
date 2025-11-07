import 'package:easy_book/features/home/presenation/views/book_detalis_view.dart';
import 'package:easy_book/features/home/presenation/views/home_view.dart';
import 'package:easy_book/features/onBoardView/presenation/view/onBoard_view.dart';
import 'package:easy_book/features/serach/presenation/views/serach_view.dart';
import 'package:easy_book/features/splash/presenation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final kHomeView = "/homeView";
  static final kbookdetalisView = "/BookDetalisView";
  static final kSerachView = "/serachview";
  static final kOnboardView = "/OnboardView";
  // static final kBookDetalisView= "/BookDetalisView";

  static final router = GoRouter(
    routes: [
      GoRoute(path: "/", builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kSerachView,
        builder: (context, state) => const SerachView(),
      ),
      GoRoute(
        path: kOnboardView,
        builder: (context, state) => const OnboardView(),
      ),
      GoRoute(
        path: kbookdetalisView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
