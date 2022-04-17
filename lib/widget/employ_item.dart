
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gac/data_provider/model/employ_model.dart';
import 'package:gac/provider/user_provider.dart';
import 'package:gac/widget/dialogs.dart';
import 'package:provider/provider.dart';

class EmployItem extends StatefulWidget {
  EmployModel employ;
   EmployItem({Key? key,required this.employ}) : super(key: key);

  @override
  State<EmployItem> createState() => _EmployItemState();
}

class _EmployItemState extends State<EmployItem> {
  bool isFavorite=false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
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
                     // image: DecorationImage(image: AssetImage("assets/images/user.png"))
                 ),
                 child: Icon(Icons.person,color: Colors.indigo),
               ),
               const SizedBox(width: 20,),
                // Text(widget.employ.empFullName),
                Text(widget.employ.empFullName),
             ],
           ),
            InkWell(
              child: Container(
                width: 27,
                height: 27,
                decoration:  BoxDecoration(
                    image: DecorationImage(image: (Provider.of<UserProvider>(context, listen: true).isFavorite(employModel: widget.employ))?
                    AssetImage("assets/images/is_favorites.png"):AssetImage("assets/images/add_to_favorites.png"))
                ),
              ),
              onTap: (){
                Provider.of<UserProvider>(context, listen: false).favoriteAction(employModel: widget.employ);
              },
            )


          ],
        ),

      ),
      onTap: (){
        showDetailsDialog(context: context,employModel: widget.employ);
      },
    );
  }
}
