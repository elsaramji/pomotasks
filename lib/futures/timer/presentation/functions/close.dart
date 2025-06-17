import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void close(BuildContext context) {
  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
}
