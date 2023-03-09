import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartavia_weather/generated/assets.dart';
import 'package:smartavia_weather/src/res/colors/app_colors.dart';
import 'package:smartavia_weather/src/ui/weather_screen/weather_screen.dart';

///GeoHeader for $[WeatherScreen]
class GeoHeader extends StatelessWidget {
  final String geo;

  const GeoHeader({Key? key, required this.geo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        SvgPicture.asset(
          Assets.iconsGeo,
          width: 24.w,
          height: 24.h,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          geo,
          overflow: TextOverflow.clip,
          style: _textTheme.bodyMedium?.copyWith(
            color: AppColors.white,
          ),
        )
      ],
    );
  }
}
