
import 'package:balaghaty_tow/presentation/main/incidents_Screen/view/listViewEle.dart';
import 'package:balaghaty_tow/resources/assete_manager.dart';
import 'package:balaghaty_tow/resources/values_manager.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class IncidentsScreen extends StatefulWidget {
  const IncidentsScreen({Key? key}) : super(key: key);

  @override
  State<IncidentsScreen> createState() => _IncidentsScreenState();
}

class _IncidentsScreenState extends State<IncidentsScreen> {
  List<Widget> ? images = [Image.asset(AsseteManager.sp1,),
    Image.asset(AsseteManager.sp2,),
    Image.asset(AsseteManager.on1,),
    Image.asset(AsseteManager.on2,),
    Image.asset(AsseteManager.on3,)] ;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 4,
            child: CarouselSlider(
          items: images,
          options:CarouselOptions(
            autoPlay: true,
            height: AppSize.s190,
            enableInfiniteScroll: true,
            enlargeCenterPage: true,
          ) ,

        )),

        // Expanded(
        //   flex: 4,
        //   child: Image.asset(AsseteManager.img),
        // ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.black12,
            child: TextField(onChanged: (newvalue) {},
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                //fillColor:Colors.blueGrey ,
                hintText: "Enter the Incident Number ",
                border:  OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff1C899A)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppSize.s10),
                  ),
                ),),),
          ),
        ),
        Expanded(
          flex: 9,
          child: SizedBox.expand(
            child: ListView(
              shrinkWrap: true,
              //scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(5.0),
              children: [
                Padding(padding: const EdgeInsets.all(10.0),
                    child: Cards(AsseteManager.icon2,Colors.white38,"location needs Lighting mantinance ","Center Dammam-Ahuod", "High","Lighting",430500009,"Open")),
                Padding(padding: const EdgeInsets.all(10.0),
                    child: Cards(AsseteManager.icon1,Colors.white38,"location needs some cleaning ","Center Dammam-Ahuod", "low","Cleaning",430500829,"open")),
                Padding(padding: const EdgeInsets.all(10.0),
                    child: Cards(AsseteManager.icon4,Colors.white38,"location needs some cleaning ","Center Dammam-Ahuod", "low","Cleaning",430500529,"open")),
                Padding(padding: const EdgeInsets.all(10.0),
                    child: Cards(AsseteManager.icon3,Colors.white38,"location needs some be fixed ","Center Dammam-Ahuod", "low","Routs mantinance",430500026,"open"))
              ],
            ),
          ),
        ),
      ],);
  }
}
