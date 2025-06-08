import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension ContextExitinion on BuildContext {
  screenWidth() => MediaQuery.of(this).size.width.w;
  screenHeight() => MediaQuery.of(this).size.height.h;

  // Virtical Space...
  setSpaceVirtical(double value) => SizedBox(height: value.h);
  spaceVirtical4() => SizedBox(height: 4.h);
  spaceVirtical8() => SizedBox(height: 8.h);
  spaceVirtical12() => SizedBox(height: 12.h);
  spaceVirtical16() => SizedBox(height: 16.h);
  spaceVirtical20() => SizedBox(height: 20.h);
  spaceVirtical24() => SizedBox(height: 24.h);
  spaceVirtical32() => SizedBox(height: 32.h);
  // Horizonal Space...
  spaceHorizonal4() => SizedBox(width: 4.w);
  spaceHorizonal8() => SizedBox(width: 8.w);
  spaceHorizonal16() => SizedBox(width: 16.w);
  spaceHorizonal20() => SizedBox(width: 20.w);
  spaceHorizonal24() => SizedBox(width: 24.w);
  spaceHorizonal32() => SizedBox(width: 32.w);
}
