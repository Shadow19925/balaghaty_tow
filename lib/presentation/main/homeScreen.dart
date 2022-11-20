import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:balaghaty_tow/presentation/main/chat_bot/ChatBot.dart';
import 'package:balaghaty_tow/presentation/main/incidents_Screen/view/incidentsScreen.dart';
import 'package:balaghaty_tow/presentation/main/photos/FromGallary.dart';
import 'package:balaghaty_tow/presentation/main/usersScreen/view/userList.dart';
import 'package:balaghaty_tow/resources/String_Manager.dart';
import 'package:balaghaty_tow/resources/color_manager.dart';
import 'package:balaghaty_tow/resources/values_manager.dart';
import 'camera/view/CameraScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? _bottomNavIndex;

  @override
  void initState() {
    _bottomNavIndex = 0;
    super.initState();
  }

  final List<Widget> _buildScreens = [
    const IncidentsScreen(),
    const UsreListScreen(),
    const TakePhoto(),
    const FromGallary(),
   const  ChatBot()
  ];
  final List<String> _titel = [StringManager.Incidents, StringManager.usres,
    StringManager.Camera, StringManager.Gallery];
  bool _botButton=false ;

  @override
  Widget build(BuildContext context) {

    List<IconData> _iconsList() => [
          Icons.report,
          Icons.people_alt_outlined,
          Icons.camera_alt,
          Icons.browse_gallery_outlined
        ];

    return Scaffold(
      //backgroundColor: color_manager.unActiveIconColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
       backgroundColor:  color_manager.navigatorBarColor,
        title:_botButton ? const Center(child: Text(StringManager.Chatbot)):Center(child: Text(_titel[_bottomNavIndex!])) ,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor:  color_manager.navigatorBarColor,
        onPressed: () {
          setState(()=>{
            if(!_botButton)
            {_botButton = true,},
          });

        },
        child: Icon(
          Icons.forum,
        ),
      ),
      body: _botButton ?_buildScreens[4]:_buildScreens[_bottomNavIndex!],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        inactiveColor: color_manager.unActiveIconColor,
        activeColor: color_manager.ActiveIconColor,
        backgroundColor: color_manager.navigatorBarColor,
        icons: _iconsList(),
        activeIndex: _bottomNavIndex!,
        gapLocation: GapLocation.center,
        leftCornerRadius: AppSize.s32,
        rightCornerRadius: AppSize.s32,
        onTap: (index) => setState(() {
    _botButton=false;
          _bottomNavIndex = index;},
      ),
    )
    );
  }
}
