import 'package:flutter/material.dart';

class MyInkWell extends StatefulWidget {
  const MyInkWell({Key? key}) : super(key: key);

  @override
  _MyInkWellState createState() => _MyInkWellState();
}

class _MyInkWellState extends State<MyInkWell> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.green[300])),
          Expanded(
              child: InkWell(
                highlightColor: Colors.pinkAccent,
                hoverColor: Colors.yellow,
                splashColor: Colors.black,
                radius: 50,
                onTap: (){
                  setState(() {
                    count += 1;
                  });
                },
                child: Ink(
                  width: double.infinity,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'нажали $count раз',
                      style: const TextStyle(fontSize: 65),
                    ),
                  ),
                ),
              )),
          Expanded(child: Container(color: Colors.green[300])),
        ],
      ),
    );
  }
}
