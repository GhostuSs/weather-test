import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartavia_weather/src/res/app_theme/app_theme.dart';
import 'package:smartavia_weather/src/ui/auth_screen/cubit/auth_cubit.dart';
import 'package:smartavia_weather/src/ui/splash_screen/cubit/splash_cubit.dart';
import 'package:smartavia_weather/src/ui/splash_screen/splash_screen.dart';
import 'package:get/get.dart';
///EntryPoint screen
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(375, 812),
      builder: (context, widget) => MultiBlocProvider(
        providers: [
          BlocProvider<SplashCubit>(
            create: (context) => SplashCubit(),
          ),
          BlocProvider<AuthCubit>(
            create: (context) => AuthCubit(),
          )
        ],
        child: GetMaterialApp(
            title: 'Smartavia',
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              AppLocalizations.delegate
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            debugShowCheckedModeBanner: false,
            theme: AppTheme.mainTheme,
            home: SplashScreen()
            // SplashScreen(),
            ),
      ),
    );
  }
}
