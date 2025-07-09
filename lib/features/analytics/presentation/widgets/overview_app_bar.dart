import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/config/themes/styles/texts/app_texts_styles.dart';

class OverviewAppBar extends StatelessWidget {
  const OverviewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      child: Center(
        child: Text("Overview", style: AppTextsStyles.lexendBold18()),
      ),
    );
  }
}
