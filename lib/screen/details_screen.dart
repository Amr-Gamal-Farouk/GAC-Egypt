import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gac/data_provider/model/employ_model.dart';
import 'package:gac/provider/user_provider.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatefulWidget {
  EmployModel employee;
   DetailsScreen({Key? key,required this.employee}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {


  bool isLoading = false;
  late UserProvider _userState;
  bool phoneExpand=false;


  @override
  void initState() {
    setState(() {
      isLoading = true;
    });
    _userState = Provider.of<UserProvider>(context, listen: false);
    getData();

    super.initState();
  }
  getData()async{
    await _userState.getEmployDetails(userId: widget.employee.empId.toString());
    setState(() {
      isLoading = false;
    });
  }


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
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text("Contacts",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic),),
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

                      Column(
                        children: [
                          Container(
                            height: 35,
                            color: Colors.indigo,
                          ),
                          SingleChildScrollView(
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                    borderRadius: BorderRadius.circular(16)
                                ),
                              child: Consumer <UserProvider>(
                                  builder: (context, provider, child) {
                                    return (isLoading)
                                        ?  const Center(
                                        child: CircularProgressIndicator(),
                                      )
                                        : Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 60.0),
                                              child: Text(
                                                provider.selectedUser!.empFullName.toString(),
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.italic,
                                                fontSize: 22),
                                              ),
                                            ),
                                            Text(
                                                "${provider.selectedUser!.departmentName} (${provider.selectedUser!.branchName})",
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(fontWeight: FontWeight.w300,
                                                  fontSize: 16),),

                                            const SizedBox(height: 10,),


                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Icon(
                                                        Icons.email,
                                                        color: Colors.grey.withOpacity(0.8),
                                                        size: 20,
                                                      ),
                                                      const SizedBox(
                                                        width: 3,
                                                      ),
                                                      Text(
                                                        provider.selectedUser!.empIndividualEmail0,
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors.grey.withOpacity(0.8)),
                                                        overflow: TextOverflow.ellipsis,
                                                      ),

                                                    ],
                                                  ),
                                                    const SizedBox(
                                                      width: 8,
                                                    ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Icon(
                                                        Icons.phone_iphone,
                                                        color: Colors.grey.withOpacity(0.8),
                                                        size: 20,
                                                      ),
                                                      const SizedBox(
                                                        width: 3,
                                                      ),
                                                      Text(
                                                        provider.selectedUser!.empMobile0.toString(),
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors.grey.withOpacity(0.8)),
                                                      )
                                                    ],
                                                  ),
                                                    const SizedBox(
                                                      width: 8,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,

                                                      children: [
                                                        Icon(
                                                          Icons.phone,
                                                          color: Colors.grey.withOpacity(0.8),
                                                          size: 20,
                                                        ),
                                                        const SizedBox(
                                                          width: 3,
                                                        ),
                                                        Text(
                                                          provider.selectedUser!.empPri.toString(),
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color: Colors.grey.withOpacity(0.8)),
                                                        )
                                                      ],
                                                    ),

                                            const SizedBox(height: 30,),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                    child: InkWell(
                                                  child: Container(
                                                    padding: const EdgeInsets.symmetric(vertical: 2),
                                                    decoration: BoxDecoration(
                                                      color: Colors.teal,
                                                      borderRadius: BorderRadius.circular(15),
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: const [
                                                        Icon(Icons.whatsapp,color: Colors.white,),
                                                        SizedBox(height: 4,),
                                                        Text("Whatsapp",style: TextStyle(color: Colors.white),)
                                                      ],
                                                    ),

                                                  ),
                                                )),
                                                const SizedBox(width: 25,),
                                                Expanded(
                                                    flex: 1,
                                                    child: InkWell(
                                                      child: Container(
                                                        padding: const EdgeInsets.symmetric(vertical: 2),

                                                        decoration: BoxDecoration(
                                                          color: Colors.blue,
                                                          borderRadius: BorderRadius.circular(15),
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: const [
                                                            Icon(Icons.email,color: Colors.white,),
                                                            SizedBox(height: 4,),
                                                            Text("Email",style: TextStyle(color: Colors.white),)
                                                          ],
                                                        ),

                                                      ),
                                                    ))
                                              ],
                                            ),
                                            const SizedBox(height: 18,),

                                            InkWell(
                                              onTap: phoneExpand?null:(){
                                                setState(() {
                                                  phoneExpand=true;
                                                });
                                              },
                                              child: Container(
                                                width: MediaQuery.of(context).size.width*0.6,
                                                padding: const EdgeInsets.symmetric(vertical: 2),

                                                decoration: BoxDecoration(
                                                  color: Colors.lightGreen,
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children:  [
                                                    Icon(Icons.call,color: Colors.white,),
                                                    SizedBox(height: 4,),
                                                    Text("Call",style: TextStyle(color: Colors.white),),
                                                    phoneExpand?Row(
                                                      children: [
                                                        Expanded(
                                                          flex: 1,
                                                          child: Container(
                                                            padding: EdgeInsets.symmetric(vertical: 2),

                                                            color: Colors.blue,
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                children: [
                                                              Icon(Icons.call,color: Colors.white,),
                                                              SizedBox(width: 4,),
                                                              Text("Pri",style: TextStyle(color: Colors.white),),
                                                            ]),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Container(
                                                            padding: EdgeInsets.symmetric(vertical: 2),
                                                            color: Colors.deepPurple,
                                                            child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children: [
                                                              Icon(Icons.phone_iphone,color: Colors.white,),
                                                              SizedBox(width: 4,),
                                                              Text("Mob",style: TextStyle(color: Colors.white),),
                                                            ]),
                                                          ),
                                                        )
                                                      ],
                                                    ):Container()
                                                  ],
                                                ),

                                              ),
                                            ),
                                            const SizedBox(height: 35,),



                                          ],
                                        );
                                  },
                                ),
                          ),
                            ),
                        ],
                      ),
                       Center(
                        child: Positioned(
                          top: 1,
                            child: Container(
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white
                              ),
                              child: const Icon(Icons.person_pin_outlined,color: Colors.indigo,
                              size: 75,),
                            )),
                      ),
                      Positioned(
                          top: 50,
                          right: 30,
                          child: Container(

                        child: InkWell(
                          child: Container(
                            width: 27,
                            height: 27,
                            child: Provider.of<UserProvider>(context, listen: true).isFavorite(employModel: widget.employee)?
                            const Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Icon(Icons.favorite_outlined,color: Colors.indigo),
                            ):
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Icon(Icons.favorite_border,color: Colors.indigo),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: Icon(Icons.add,size: 20,color: Colors.yellow),
                                ),

                              ],
                            ),

                          ),
                          onTap: (){
                            Provider.of<UserProvider>(context, listen: false).favoriteAction(employModel: widget.employee);
                          },
                        ),
                      ))

                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return pageView(context);
  }
}
