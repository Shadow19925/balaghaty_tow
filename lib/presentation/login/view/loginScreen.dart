import 'package:balaghaty_tow/presentation/common/CutomButton.dart';
import 'package:balaghaty_tow/resources/assete_manager.dart';
import 'package:balaghaty_tow/resources/color_manager.dart';
import 'package:balaghaty_tow/resources/appUsres.dart';
import 'package:balaghaty_tow/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../resources/String_Manager.dart';
import '../../../resources/routes_manager.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _userNamecontroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Future <dynamic> getPopUp(BuildContext context,String image) async {

   return  showDialog(context: context, builder: (BuildContext context) =>
           Center(
            child: Container(
              color: Colors.transparent,
              height: AppSize.s100,
              width: AppSize.s100,
              child: Column(
                children: [
                  //Text("Please 0aWit"),
                  SizedBox(
                      height: AppSize.s100,
                      width: AppSize.s100,
                      child: Lottie.asset(image)),
                ],
              ),
            ),
          ),
   );


   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color_manager.background,
      body: Container(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: AppSize.s60,
                ),
                Center(
                    child: SizedBox(
                        height: 300.0, child: Image.asset(AsseteManager.sp1))),
                Padding(
                  padding: const EdgeInsets.all(AppPadding.p15),
                  child: TextFormField(
                    controller: _userNamecontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(AppPadding.p15))),
                      hintText: StringManager.UsernameHintText,
                      labelText: StringManager.UsernameLabel,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(AppPadding.p15),
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(AppSize.s15))),
                      hintText: StringManager.passwordErorrMessage,
                      labelText: StringManager.password,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(AppPadding.p8),
                  child: CustomGenralButton(
                    text: StringManager.Login,
                    onTap: () {
                      getPopUp(context,JsonAsset.loadin);
                      Future.delayed(const Duration(seconds: 3), () {
                        dismmesDialog(context);
                        if (!usersOfTheApp.getUserAccess(
                            _userNamecontroller.text,
                            _passwordController.text)) {
                          getPopUp(context,JsonAsset.success);
                          Future.delayed(const Duration(seconds:2 ),(){
                            dismmesDialog(context);
                            Navigator.pushReplacementNamed(context,Routes.home);
                          });
                        } else {
                          getPopUp(context,JsonAsset.wrong);
                          Future.delayed(const Duration(seconds:3 ),(){
                          dismmesDialog(context);
                          }) ;
                        }
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }


  _isthereISCurrentDialogThere(BuildContext context) =>
      ModalRoute
          .of(context)
          ?.isCurrent != true;

  // this method will dismmes any dialog exist in the context
  dismmesDialog(BuildContext context) {
    if (_isthereISCurrentDialogThere(context)) {
      Navigator.of(context, rootNavigator: true).pop(
          true); //  this will pop all the widget and only will let the main context appear

    }
  }
}
