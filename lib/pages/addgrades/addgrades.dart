import 'package:flutter/material.dart';
import 'package:hello_word/pages/home/data/data_users.dart';
import 'package:hello_word/pages/home/widgets/user_tile.dart';

class GradesPage extends StatelessWidget {
  const GradesPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
  final users = {...data_Users};
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
           itemCount: users.length, 
           itemBuilder: (context, i) => UserTileGrade(users.values.elementAt(i))
      ),
    );
  }
}
