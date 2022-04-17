import 'package:flutter/material.dart';
import 'package:gac/provider/user_provider.dart';
import 'package:gac/widget/employ_item.dart';
import 'package:provider/provider.dart';

class EmployeesScreen extends StatefulWidget {
  const EmployeesScreen({Key? key}) : super(key: key);

  @override
  State<EmployeesScreen> createState() => _EmployeesScreenState();
}

class _EmployeesScreenState extends State<EmployeesScreen> {
  bool isLoading = false;
  late UserProvider _userState;


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
    await _userState.getEmploys();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Directory"),
        automaticallyImplyLeading: true,
      ),
      body:
      (isLoading) ? Center(child: const CircularProgressIndicator(color: Colors.indigo,))
          : Consumer <UserProvider>(
        builder: (context, provider, child) {
          return
            ListView.builder(
            itemCount: provider.allEmploy.length,
            itemBuilder: (context, index) {
              return  EmployItem(employ: provider.allEmploy[index],);
            },
    );
        },
      ),
    );
  }
}
