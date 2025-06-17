import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pomotasks/config/texts/titles_texts.dart';
import 'package:pomotasks/config/themes/assets/constant_icons_path.dart';
import 'package:pomotasks/config/themes/styles/texts/app_texts_styles.dart';
import 'package:pomotasks/futures/timer/presentation/functions/close.dart';

class TimerAppBar extends StatelessWidget {
  final VoidCallback? onClose;
  const TimerAppBar({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      height: 72.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              close(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 16.h),

              child: SvgPicture.asset(
                ConstantIconsPath.closeIconSvg,
                width: 24.w,
                height: 24.h,
              ),
            ),
          ),
          Spacer(),
          Text(
            TitlesTexts.timerAppBar,
            style: AppTextsStyles.lexendBold18(),
            textAlign: TextAlign.center,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
