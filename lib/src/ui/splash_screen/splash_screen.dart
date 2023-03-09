import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartavia_weather/generated/assets.dart';
import 'package:smartavia_weather/src/res/colors/app_colors.dart';
import 'package:smartavia_weather/src/ui/splash_screen/cubit/splash_cubit.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

///Splash Screen
class SplashScreenState extends State<SplashScreen> {
  SplashScreenState();

  final SplashCubit cubit = SplashCubit();

  @override
  void initState() {
    cubit.initialize(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purple,
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 71),
        child: Padding(
          padding: EdgeInsets.only(top: 120.h),
          child: SvgPicture.asset(
            Assets.imagesLabel,
            width: 232.w,
            height: 58.h,
          ),
        ),
      ),
    );
  }
}
