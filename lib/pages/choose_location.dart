import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}
class _ChooseLocationState extends State<ChooseLocation> {


  int counter=0;

  @override
  Widget build(BuildContext context) {
    print('Build is Called');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Choose Location'),
        elevation: 0,
      ),
      body:  SafeArea(
          child: ElevatedButton(
              onPressed:(){
                setState(() {
                  counter=counter+1;
                });
              },
              child: Text('counter is $counter'),
          ),
      ),
    );
  }
}
