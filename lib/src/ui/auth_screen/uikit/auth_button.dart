import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartavia_weather/src/res/app_typography/app_typography.dart';
import 'package:smartavia_weather/src/res/colors/app_colors.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool? isLoadingState;

  const AuthButton({
    Key? key,
    required this.onTap,
    this.isLoadingState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final applocale = AppLocalizations.of(context)!;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24.r),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 12.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.r),
          color: AppColors.red,
        ),
        child: Center(
          child: isLoadingState == true
              ? SizedBox(
                  height: 20.sp,
                  width: 20.sp,
                  child: const CircularProgressIndicator(
                    color: AppColors.white,
                  ),
                )
              : Text(
                  applocale.auth,
                  style: AppTypography.body1med.copyWith(
                    color: AppColors.white,
                  ),
                ),
        ),
      ),
    );
  }
}
