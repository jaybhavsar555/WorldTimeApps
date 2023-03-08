import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  var url=Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  void getData() async {

    // //create a network request for username
    // String username=await Future.delayed(Duration( seconds: 3),(){
    //   // print('jay');
    //
    //   return  'jay';
    // });
    //
    // String bio=await Future.delayed(Duration( seconds: 2),(){
    //   // print('marathi,non-vegan,loves football');
    //   return 'marathi,non-vegan,loves football';
    // });
    // /** to print the value of the username and bio it will wait firstly to get username
    //  * for 3 second and after completion the it go for the 2nd function and wait for the 2 second and then
    //  * it will print both values in print statement
    //  **/
    // print( '$username- $bio');
    // print('some statement');
  Response response= await get(url);
  Map data=jsonDecode(response.body);
  print(data);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text("Loading Page")),
    );
  }
}
