import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gac/screen/direcrory_favorite_screen.dart';
import 'package:gac/screen/employees_screen.dart';

class HomeScreenOption2 extends StatefulWidget {

  @override
  _HomeScreenOption2State createState() => _HomeScreenOption2State();
}

class _HomeScreenOption2State extends State<HomeScreenOption2> {
  // late File file;

  pageView(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(

        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width,
                color: Colors.indigo,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          "assets/images/logo.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          "GAC",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          " EGYPT",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Text(
                      "Delivering your strategy",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(

                        textDirection: TextDirection.rtl,
                        children:  [
                          InkWell(
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: const Center(
                                child: Icon(Icons.person_search,color: Colors.indigo),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: const Center(
                                child: Icon(Icons.favorite,color: Colors.indigo),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => FavoriteScreen(),));
                            },

                          )

                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text("Our Directory",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic),),
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                      Container(
                        height: 100,
                        decoration: const BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                      ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 157,
                    child: EmployeesScreen() ,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }

  void selectAction(BuildContext context, int index) {
    if (index == 0) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EmployeesScreen(),
          ));
    } else if (index == 1) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FavoriteScreen(),
          ));

    } else if (index == 2) {
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => TeamView(),
      //     ));
    }
  }

  // selectImage(parentContext) {
  //   return showDialog(
  //       context: parentContext,
  //       builder: (context) {
  //         return SimpleDialog(
  //           title: Text("Create Post"),
  //           children: [
  //             SimpleDialogOption(
  //               child: Text("Photo with camera"),
  //               onPressed: cameraImageAction,
  //             ),
  //             SimpleDialogOption(
  //               child: Text("Image From Gallery"),
  //               onPressed: galleryImageAction,
  //             ),
  //             SimpleDialogOption(
  //               child: Text("Cancel"),
  //               onPressed: () => Navigator.of(context).pop(),
  //             )
  //           ],
  //         );
  //       });
  // }

  // cameraImageAction() async {
  //   Navigator.of(context).pop();
  //
  //   PickedFile? file = await ImagePicker().getImage(
  //       source: ImageSource.camera,
  //       maxHeight: 675,
  //       maxWidth: 960,
  //       imageQuality: 85);
  //   if (file != null) {
  //     print(file.path);
  //     setState(() {
  //       this.file = File(file.path);
  //     });
  //     Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => UploadImageView(this.file),
  //         ));
  //   }
  // }

  // galleryImageAction() async {
  //   Navigator.of(context).pop();
  //
  //   PickedFile? file = await ImagePicker()
  //       .getImage(source: ImageSource.gallery, maxHeight: 675, maxWidth: 960);
  //   if (file != null) {
  //     print(file.path);
  //     setState(() {
  //       this.file = File(file.path);
  //     });
  //     Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => UploadImageView(this.file),
  //         ));
  //   }
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    print(
        MediaQuery.of(context).size.width / MediaQuery.of(context).size.height);
    return pageView(context);
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
