import 'package:flutter/material.dart';
import 'package:mero_medical/pages/firstPage.dart';

class second extends StatefulWidget {
  int num;

  second({Key? key, required this.num}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => Firstpage(
                                some: widget.num,
                              ))));
                },
                child: Text("Go to Home Page")),
          ),
          ElevatedButton(
              onPressed: () {
                widget.num++;
                setState(() {});
                print(widget.num);
              },
              child: Text("Add")),
          Center(
            child: Text(widget.num.toString(),
                style: TextStyle(
                  fontSize: 100,
                )),
          )
        ],
      ),
    );
  }
}
