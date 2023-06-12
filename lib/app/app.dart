import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:smarthealthy/common/constants/locales.dart';
import 'package:smarthealthy/common/theme/app_theme.dart';
import 'package:smarthealthy/common/widgets/refresh_indicator.widget.dart';
import 'package:smarthealthy/data/repositories/category.repository.dart';
import 'package:smarthealthy/data/repositories/cuisine.repository.dart';
import 'package:smarthealthy/data/repositories/level.repository.dart';
import 'package:smarthealthy/presentation/recipe_filter/recipe_filter.dart';
import 'package:smarthealthy/router/app_router.dart';
import 'package:smarthealthy/data/repositories/user.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/flavors.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';
import 'package:smarthealthy/generated/codegen_loader.g.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [
        AppLocales.en,
        AppLocales.vi,
      ],
      path: AppLocales.path,
      fallbackLocale: AppLocales.vi,
      startLocale: AppLocales.vi,
      useOnlyLangCode: true,
      assetLoader: const CodegenLoader(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(
              userRepository: getIt.get<UserRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => RecipeFilterBloc(
              categoryRepository: getIt.get<CategoryRepository>(),
              cuisineRepository: getIt.get<CuisineRepository>(),
              levelRepository: getIt.get<LevelRepository>(),
            ),
          ),
        ],
        child: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: RefreshConfiguration(
            headerBuilder: () => const RefreshHeaderIndicator(),
            footerBuilder: () => const RefreshFooterIndicator(),
            child: Builder(
              builder: (context) {
                return ScreenUtilInit(
                  minTextAdapt: true,
                  splitScreenMode: true,
                  designSize: const Size(414, 896),
                  builder: (context, child) {
                    return MaterialApp(
                      navigatorKey: _navigatorKey,
                      title: AppFlavor.title,
                      theme: AppTheme.themeData,
                      // routerConfig: AppRoutes`.router,
                      onGenerateRoute: AppRouter.onGenerateRoute,
                      initialRoute: AppRouter.splash,
                      localizationsDelegates: context.localizationDelegates,
                      supportedLocales: context.supportedLocales,
                      locale: context.locale,
                      debugShowCheckedModeBanner: false,
                      builder: (_, child) {
                        return BlocListener<AuthBloc, AuthState>(
                          listener: (_, state) {
                            switch (state.status) {
                              case AuthenticationStatus.unknown:
                                break;
                              case AuthenticationStatus.authenticated:
                                _navigator.pushNamedAndRemoveUntil(
                                  AppRouter.root,
                                  (route) => false,
                                );
                                break;
                              case AuthenticationStatus.unauthenticated:
                                _navigator.pushNamedAndRemoveUntil(
                                  AppRouter.root,
                                  (route) => false,
                                );
                                break;
                            }
                          },
                          child: child,
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
