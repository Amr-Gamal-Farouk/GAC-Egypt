
import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_settings/app_settings.dart';


Future<dynamic> showDialogNotInternet({required BuildContext context}) {
  return showDialog(
      context: context,
      builder: (BuildContext context) => FlipInX(
        child: CupertinoAlertDialog(
          title: Center(
            child: Row(
              children: const <Widget>[
                Icon(
                  Icons.warning,
                ),
                Text("  Internet issue"),
              ],
            ),
          ),
          content: const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text("Please checking internet connection!"),
          ),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  AppSettings.openWIFISettings();
                },
                child: const Text("Setting",style: TextStyle(color: Colors.teal)))
          ],
        ),
      ));
}

Future<dynamic> showAlertDialog({required BuildContext context,required String content}) {
  return showDialog(
      context: context,
      builder: (BuildContext context) =>  FlipInX(
        child: CupertinoAlertDialog(
          title: Center(
            child: Row(
              children: const <Widget>[
                Icon(
                  Icons.warning,
                ),
                Text("Alert"),
              ],
            ),
          ),
          content:  Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(content),
          ),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("OK",style: TextStyle(color: Colors.teal)))
          ],
        ),
      ));
}

