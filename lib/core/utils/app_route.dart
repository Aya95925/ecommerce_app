import 'package:ecommerce_app/feature/auth/presentation/view/forget_password_view.dart';
import 'package:ecommerce_app/feature/auth/presentation/view/login_view.dart';
import 'package:ecommerce_app/feature/auth/presentation/view/password_recovery_view.dart';
import 'package:ecommerce_app/feature/auth/presentation/view/reset_your_password_view.dart';
import 'package:ecommerce_app/feature/auth/presentation/view/sign_up_view.dart';
import 'package:ecommerce_app/feature/home/presentation/view/more_popular_view.dart';
import 'package:ecommerce_app/feature/onboarding/presentation/view/onboarding_view.dart';
import 'package:ecommerce_app/feature/search/presentation/view/recent_search_view.dart';
import 'package:ecommerce_app/feature/search/presentation/view/search_without_result_view.dart';
import 'package:ecommerce_app/feature/search/presentation/view/widget/search_view_body.dart';
import 'package:ecommerce_app/feature/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

import '../../feature/main_layout/presentation/view/main_layout_view.dart';

abstract final class AppRoute {
  static final splashRoute = MaterialPageRoute(
    builder: (context) => SplashView(),
  );
  static final onBoardingRoute = MaterialPageRoute(
    builder: (context) => OnboardingView(),
  );
  static final loginView = MaterialPageRoute(builder: (context) => LoginView());
  static final signUp = MaterialPageRoute(builder: (context) => SignUp());
  static final forgetPasswordView = MaterialPageRoute(
    builder: (context) => ForgetPasswordView(),
  );
  static final passwordRecoveryView = MaterialPageRoute(
    builder: (context) => PasswordRecoveryView(),
  );
  static final resetPassword = MaterialPageRoute(
    builder: (context) => ResetYourPasswordView(),
  );
  static final homeView = MaterialPageRoute(
    builder: (context) => MainLayoutView(),
  );
  static final morePopularBody = MaterialPageRoute(
    builder: (context) => MorePopularView(),
  );
    static final recentSearch = MaterialPageRoute(
    builder: (context) => RecentSearchView(),
  );
    static final searchView = MaterialPageRoute(
    builder: (context) => SearchViewBody(),
  );
      static final searchWithOutResult = MaterialPageRoute(
    builder: (context) =>SearchWithoutResultView(),
  );
  
  

}
