import 'package:flutter/material.dart';

import '../../../../resources/size_config.dart';
import '../../../common/my_Sized_Box.dart';

class PageViewPart extends StatelessWidget {
  String titel,subTitel,imagePath;
   PageViewPart(this.titel,this.subTitel,this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedCustomBoxVertical(11.5),
        SizedBox(height:Size_config.defaultSize!*20,child: Image.asset("$imagePath")),
        Text(
          "$titel",
          style: TextStyle(
            fontSize: 20,
            color: const Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          softWrap: false,
        ),
        SizedCustomBoxVertical(1.5),
        Text(
          '$subTitel',
          style: TextStyle(
            fontSize: 15,
            color: const Color(0xff78787c),
          ),
          softWrap: false,
        ),
        SizedCustomBoxVertical(1.5),
      ],
    );
  }
}
