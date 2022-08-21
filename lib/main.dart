import 'package:flutter/material.dart';

void main() {
  runApp(demo());
}

class demo extends StatelessWidget {
  const demo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          centerTitle: true,
          title: Text("Demo App"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 50,
                color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.black,
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.black,
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.black,
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              Text("Completed",style:TextStyle(backgroundColor:Colors.blue,fontSize: 40,fontWeight: FontWeight.bold),)

            ],
          ),
        ),drawer: Drawer(),
      ),
    );
  }
}
