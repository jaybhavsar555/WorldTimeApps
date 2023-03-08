import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextButton.icon(
                onPressed:(){
                  Navigator.pushNamed(context, '/location');
                }, 
                icon: Icon(Icons.location_pin),
                label: Text('Edit Location'),
               )
          ],
        ),
      ),
    );
  }
}
