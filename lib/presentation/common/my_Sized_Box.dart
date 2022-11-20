import 'package:balaghaty_tow/resources/size_config.dart';
import 'package:flutter/material.dart';


class SizedCustomBoxHorzantile extends StatelessWidget {
  double? value;
  SizedCustomBoxHorzantile(this.value);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: Size_config.defaultSize! * value!);
  }
}

class SizedCustomBoxVertical extends StatelessWidget {
  double? value;
  SizedCustomBoxVertical(this.value);
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: Size_config.defaultSize! * value!);
  }
}