import 'package:flutter/material.dart';

class MyBoxDecoration extends StatefulWidget {
  const MyBoxDecoration({Key? key}) : super(key: key);

  @override
 _MyBoxDecorationState createState() => _MyBoxDecorationState();
}






class _MyBoxDecorationState extends State<MyBoxDecoration> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Icon(
            Icons.lightbulb,
          size:150,
          color: clicked ? Colors.yellowAccent : Colors.black,
          ),
          const SizedBox(height: 50),
          Container(
            width: 400,
            height: 250,
              color: Colors.green,
              foregroundDecoration : const BoxDecoration(color: Colors.orange),
            child: Center(
              child: ElevatedButton(onPressed: (){setState(() {
                clicked = !clicked;
              });
              },
                child: Text(

                  clicked ? 'Включить' : 'Выключить',
                  style: const TextStyle(fontSize: 50),
                ),
              ),
                  )
          ),
        ],
      )
    );
  }
}
