import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../styles/colors.dart';

class CallInfo extends StatelessWidget {
  const CallInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.orange[300],
          alignment: Alignment.center,
          child: FutureBuilder<http.Response>(
            future: http.get(Uri.parse('https://reqres.in/api/users/5')),
            builder: (BuildContext context, AsyncSnapshot<http.Response> snapshot){
              if (snapshot.hasData) {
                final Map<String, dynamic> decoded = jsonDecode(snapshot.data!.body);
                final user_info = decoded["data"];
                return Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         const SizedBox(width: 20),
                        const Text(
                          'id',
                          style:  TextStyle(
                              fontSize: 30, color: AppColor.primary),
                        ),
                         const SizedBox(width: 20),
                        Expanded(
                          child: Text(user_info['id'].toString(),
                              style:  const TextStyle(
                                  fontSize: 30, color: AppColor.secondary)),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 20),
                        const Text(
                          'email',
                          style:  TextStyle(
                              fontSize: 30, color: AppColor.primary),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Text(user_info['email'].toString(),
                              style:  const TextStyle(
                                  fontSize: 30, color: AppColor.secondary)),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 20),
                        const Text(
                          'first_name',
                          style:  TextStyle(
                              fontSize: 30, color: AppColor.primary),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Text(user_info['first_name'].toString(),
                              style:  const TextStyle(
                                  fontSize: 30, color: AppColor.secondary)),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 20),
                        const Text(
                          'last_name',
                          style:  TextStyle(
                              fontSize: 30, color: AppColor.primary),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Text(user_info['last_name'].toString(),
                              style:  const TextStyle(
                                  fontSize: 30, color: AppColor.secondary)),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 20),
                        const Text(
                          'avatar',
                          style:  TextStyle(
                              fontSize: 30, color: AppColor.primary),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Text(user_info['avatar'].toString(),
                              style:  const TextStyle(
                                  fontSize: 30, color: AppColor.secondary)),
                        ),
                      ],
                    )
                  ],
                );
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}



class Post{
  final int userId;
  final int id;
  final String title;
  final String body;

  Post(this.userId, this.id, this.title, this.body);
}
