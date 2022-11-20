

import 'package:balaghaty_tow/presentation/onboarding/view/page_part/pageviewrItems.dart';
import 'package:balaghaty_tow/resources/String_Manager.dart';
import 'package:balaghaty_tow/resources/assete_manager.dart';
import 'package:flutter/material.dart';



class Page_view extends StatelessWidget {
  PageController? _controller ;
  Page_view(this._controller);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        PageViewPart(StringManager.titel1 ,StringManager.SubTitel1,AsseteManager.on1),
        PageViewPart(StringManager.titel2,StringManager.SubTitel2,AsseteManager.on2),
        PageViewPart(StringManager.titel3,StringManager.SubTitel3,AsseteManager.on3),
      ],

    );
  }
}
