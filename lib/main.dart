import 'package:call_logs/recent_calls/recent_calls_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // В routes прописываются маршруты к виджетам
      routes: {
        // Путь к корневому виджету
        '/': (context) => const RecentCalls(),
        // Путь к любому другому виджету
         '/CallInfo': (context) => const CallInfo(),
      },
      //


      // initialRoute запускает виджет, который указан после :
      initialRoute: '/',
    );
  }
}
