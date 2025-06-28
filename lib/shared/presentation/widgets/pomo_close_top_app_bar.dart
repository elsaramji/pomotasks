import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pomotasks/config/themes/assets/constant_icons_path.dart';
import 'package:pomotasks/config/themes/styles/texts/app_texts_styles.dart';
import 'package:pomotasks/shared/presentation/functions/close.dart';

class PomoCloseTopAppBar extends StatelessWidget {
  final String title;
  const PomoCloseTopAppBar({super.key, required this.title});

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
            title,
            style: AppTextsStyles.lexendBold18(),
            textAlign: TextAlign.center,
          ),
          Spacer(),
        ],
      ),
    );
  
  }
}