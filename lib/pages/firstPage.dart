import 'package:flutter/material.dart';
import 'package:mero_medical/pages/secondPage.dart';

class Firstpage extends StatefulWidget {
  int some;
  Firstpage({Key? key, required this.some}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  var num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                num++;
                widget.some++;
                setState(() {});
                print(num);
              },
              child: Text("Add")),
          SizedBox(height: 20),
          Center(
            child: Text(num.toString(), style: TextStyle(fontSize: 100)),
          ),
          Center(
            child:
                Text(widget.some.toString(), style: TextStyle(fontSize: 100)),
          ),
          SizedBox(height: 100),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => second(
                              num: num,
                            ))));
              },
              child: Text("Go to back")),
          ElevatedButton(
              onPressed: () {
                num = 0;
                widget.some = 0;
                setState(() {});
                print(num);
              },
              child: Text("reset")),
        ],
        
      )),
    );
  }
}
