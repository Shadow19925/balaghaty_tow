import 'package:balaghaty_tow/resources/color_manager.dart';
import 'package:flutter/material.dart';

import '../../resources/size_config.dart';
class CustomGenralButton extends StatelessWidget {
  CustomGenralButton({this.text,this.onTap});
  String? text ;

  dynamic onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 50.0,
          width: Size_config.screenWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: color_manager.ButtonColor,
          ),
          child: Center(
            child: Text(
              '$text',
              style: TextStyle(
                fontSize: 14,
                color:  Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              softWrap: false,
            ),
          )
      ),
    );
  }
}
