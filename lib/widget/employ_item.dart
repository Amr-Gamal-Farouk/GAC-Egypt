
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gac/data_provider/model/employ_model.dart';

class EmployItem extends StatefulWidget {
  // EmployModel employ;
  //  EmployItem({Key? key,required this.employ}) : super(key: key);

  @override
  State<EmployItem> createState() => _EmployItemState();
}

class _EmployItemState extends State<EmployItem> {
  bool isFavorite=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Row(
           children: [
             Container(
               width: 40,
               height: 40,
               decoration: const BoxDecoration(
                   image: DecorationImage(image: AssetImage("assets/images/user.png"))
               ),
             ),
             const SizedBox(width: 20,),
              // Text(widget.employ.empFullName),
              Text("Ahmed Mohamed Ahmed"),
           ],
         ),
          InkWell(
            child: Container(
              width: 27,
              height: 27,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/add_to_favorites.png"))
              ),
            ),
          )


        ],
      ),

    );
  }
}
