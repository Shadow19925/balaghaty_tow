
import 'package:balaghaty_tow/resources/assete_manager.dart';
import 'package:balaghaty_tow/resources/color_manager.dart';
import 'package:balaghaty_tow/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({Key? key}) : super(key: key);

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Coming Soon ",style: TextStyle(fontSize: FontSize.s20,color: color_manager.unActiveIconColor,fontWeight: FontWeight.bold),),
            SizedBox(
              height: AppSize.s300,
                width: AppSize.s300,
                child: LottieBuilder.asset(JsonAsset.working))
          ],
        ),
      ),
    );
  }
}
