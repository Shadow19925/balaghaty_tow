import 'dart:io';
import 'package:balaghaty_tow/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:balaghaty_tow/resources/color_manager.dart';
import 'package:image_picker/image_picker.dart';

class TakePhoto extends StatefulWidget {
  const TakePhoto({Key? key}) : super(key: key);

  @override
  State<TakePhoto> createState() => _TakePhotoState();
}

class _TakePhotoState extends State<TakePhoto> {
  final ImagePicker _imagePicker = ImagePicker();

    File? image;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            const  SizedBox(
              height: AppSize.s50,
            ),
              image == null
                ? const Center(
                  child:  FlutterLogo(
                    size: AppSize.s200,
                  ))
                : Image.file(image!, height: AppSize.s200, width: AppSize.s200),
            const SizedBox(
              height: AppSize.s50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s25),
                ),
                primary: color_manager.navigatorBarColor,
                elevation: AppSize.s30,
              ),
              onPressed: () async {
                try {
                  final cameraPhoto =
                      await _imagePicker.pickImage(source: ImageSource.camera);
                  if (cameraPhoto == null) return;
                    setState(()=> image =File(cameraPhoto.path));
                } on Exception catch (e) {
                  print("Not able to access the camera.. ${e}");
                }
                    //print("${image}");});

              },
              child: Text("Pick Camera",
                  style: TextStyle(
                      fontSize: FontSize.s20,
                      color: color_manager.unActiveIconColor,
                      fontWeight: FontWeight.bold)),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s25),
                ),
                primary: color_manager.navigatorBarColor,
                elevation: 30.0,
              ),
              onPressed: () async {
                try{
                  final galleryPhoto = await _imagePicker.pickImage(source: ImageSource.gallery);
                  if(galleryPhoto == null) return ;
                  setState(() =>image= File(galleryPhoto.path));
                }  catch(e){
                  print("Not able to access the camera.. ${e}");
                }

              },
              child: Text("Pick From Gallery",
                  style: TextStyle(
                      fontSize: FontSize.s20,
                      color: color_manager.unActiveIconColor,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }

// in case there is needs to save data  in gallery this code will be used
// void _takePhoto() async {
//   await
//   _imagePicker.pickImage(source: ImageSource.camera)
//       .then((XFile? recordedImage) {
//     if (recordedImage != null && recordedImage.path != null) {
//       setState(() {
//         firstButtonText = 'saving in progress...';
//       });
//       GallerySaver.saveImage(recordedImage.path).then((path) {
//         setState(() {
//           firstButtonText = 'image saved!';
//         });
//       });
//     }
//   });
// }
// Widget getImage(File ? image) {
//   if (image!.path.isNotEmpty)
//    { return Image.file(image?.path);
// }
// else{
// return Container();
// }
}
